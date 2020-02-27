FROM bitnami/php-fpm:5.5.30-2
ADD docker-entrypoint.sh /docker-entrypoint.sh

RUN \
	chmod +x /docker-entrypoint.sh \
 && apt-get update \
 && apt-get install -y --no-install-recommends sendmail \
 && rm -rf /var/lib/apt/lists/* \
 && sed -i 's/;sendmail_path =/sendmail_path =/g' /opt/bitnami/php/etc/conf.defaults/php.ini

ENTRYPOINT ["/docker-entrypoint.sh"]