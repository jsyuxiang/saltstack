include:
  - nginx
  - php
{{ pillar['ngx_conf_dir'] }}/conf.d:
  file.recurse:
    - source: salt://files/mendian_webserver/person/nginx_conf.d
    - require:
      - pkg: nginx
    - watch_in:
      - service: nginx
