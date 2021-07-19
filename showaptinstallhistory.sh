for file_list in `ls -rt /var/lib/dpkg/info/*.list`; do \
    stat_result=$(stat --format=%y "$file_list"); \
    printf "%-50s %s\n" $(basename $file_list .list) "$stat_result"; \
done
