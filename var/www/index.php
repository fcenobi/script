<?php
function url($url) {
  $result = parse_url($url);
  return $result['scheme']."://".$result['host'];
}

function getUrl($url,$index,$subDomain=null,$issecure=false,$www=true) {
//  $url=$_SERVER['SERVER_NAME']
  $protocol=($issecure==true) ?  "https://" : "http://";
  $url= substr($url,$index);
  $www =($www==true) ? "www": "";
  $url= empty($subDomain) ? $protocol.$url :
  $protocol.$www.$subDomain.$url;
  return $url;
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
        <title>Laragon</title>

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
                <div class="title" title="web.fcenobi.com">web.fcenobi.com</div>

                <div class="info"><br />
         <!--             <?php print($_SERVER['SERVER_SOFTWARE']); ?><br />
                      PHP version: <?php print phpversion(); ?>   <span><a title="phpinfo()" href="/?q=info">info</a></span><br />
                      Document Root: <?php print ($_SERVER['DOCUMENT_ROOT']); ?><br />
                      -->
				<!--		<li><a href="./adminer">adminer</a></li>
				
			
		
						<li><a href="./phpmyadmin">phpmyadmin</a></li>
			-->
					  
					  
                                 <?php
                            $d = dir(".");
                            // echo "Path: " . $d->path . "\n";
                            echo "<ul>";
                            while (false !== ($entry = $d->read())) {
                                if ($entry !== "index.php") {
                                if (substr( $entry, 0, 1 ) !== ".") {
                                echo "<li><a href='{$entry}'>{$entry}</a></li>";
                                }
                            }
                            }
                            echo "</ul>";
                            $d->close();
                        ?>



                </div>
             <!--   <iframe src="https://onedrive.live.com/embed?cid=E812BEFFE2DC2EBD&resid=E812BEFFE2DC2EBD%21158943&authkey=AFOMdiht0NO_k7Y" width="165" height="128" frameborder="0" scrolling="no"></iframe> -->
              
                </div>
            </div>

        </div>
    </body>
</html>
                <div class="opt">
