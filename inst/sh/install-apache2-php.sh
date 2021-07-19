#install apache2 and php
apt-get install -y php php-cgi php-cli php-common php-curl php-gd php-mysql php-pgsql  php-sqlite3 php-xml libapr1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap libjansson4 apache2-bin apache2-data apache2-utils apache2 ssl-cert

mv /var/www/html/index.html /var/www/html/index.old

cat  > /var/www/html/index.php << "EOF"
<?php
function getUrl($url,$index,$subDomain=null,$issecure=false,$www=true) {
  //$url=$_SERVER['SERVER_NAME']
  $protocol=($issecure==true) ?  "https://" : "http://";
  $url= substr($url,$index);
  $www =($www==true) ? "www": "";
  $url= empty($subDomain) ? $protocol.$url :
  $protocol.$www.$subDomain.$url;
  return $url;
}

function url($url) {
  $result = parse_url($url);
  return $result['scheme']."://".$result['host'];
}

function getBaseUrl()
{
    // output: /myproject/index.php
    $currentPath = $_SERVER['PHP_SELF'];

    // output: Array ( [dirname] => /myproject [basename] => index.php [extension] => php [filename] => index )
    $pathInfo = pathinfo($currentPath);

    // output: localhost
    $hostName = $_SERVER['HTTP_HOST'];

    // output: http://
    $protocol = strtolower(substr($_SERVER["SERVER_PROTOCOL"],0,5))=='https'?'https':'http';

    // return: http://localhost/myproject/
    return $protocol.'://'.$hostName.$pathInfo['dirname']."/";
}


	$apache = preg_replace("/\//", " ", preg_split("/ /", $_SERVER['SERVER_SOFTWARE']));
	function in_arrayi($needle, $haystack) {
		return in_array(strtolower($needle), array_map('strtolower', $haystack));
	}

	$ignore = array('.','..', 'images', 'protected', 'phpMyAdmin');

?>
<?php
  if (!empty($_GET['q'])) {
    switch ($_GET['q']) {
      case 'info':
        phpinfo();
        exit;
      break;
	  case 'var':
        phpinfo(INFO_VARIABLES);
        exit;
      break;
    }
  }
?>
<!DOCTYPE html>
<html>
    <head>
        <title>menu</title>

        <link href="https://fonts.googleapis.com/css?family=Karla:400" rel="stylesheet" type="text/css">

        <style>
            html, body {
                height: 100%;
            }

            body {
                margin: 0;
                padding: 0;
                width: 100%;
                display: table;
                font-weight: 100;
                font-family: 'Karla';
            }

            .container {
                text-align: center;
                display: table-cell;
                vertical-align: middle;
            }

            .content {
                text-align: center;
                display: inline-block;
            }

            .title {
                font-size: 96px;
            }

            .opt {
                margin-top: 30px;
            }

            .opt a {
              text-decoration: none;
              font-size: 150%;
            }
            a:hover {
              color: red;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="content">
            <div class="title" title="<?php print ($_SERVER['SERVER_NAME']); ?>"><?php print ($_SERVER['SERVER_NAME']); ?></div>


                <div class="info"> <?php print($_SERVER['SERVER_SOFTWARE']); ?>   PHP version: <?php print phpversion(); ?>   <span><a title="phpinfo()" href="/?q=info">info</a></span><br />
                 Document Root: <?php print ($_SERVER['DOCUMENT_ROOT']); ?><br />
			<li><a href="http://<?php echo $_SERVER['HTTP_HOST']; ?>:5000">webadmin</a></li>
			<li><a href="http://<?php echo $_SERVER['HTTP_HOST']; ?>:4200">sshweb</a></li>
                      <?php
$d = dir(".");
echo "Path: " . $d->path . "\n";
echo "<ul>";
while (false !== ($entry = $d->read())) {
   echo "<li><a href='{$entry}'>{$entry}</a></li>";
}
echo "</ul>";
$d->close();
?>


                </div>
                <div class="opt">
					<?php
	//				 $currentPath = (getBaseUrl)
					// echo "$currentPath";
					 ?>

                </div>
            </div>

        </div>
    </body>
</html>

EOF


