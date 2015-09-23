<?php
  $c->domain_name  = 'davical-tantpi.ddns.net';
//  $c->sysabbr     = 'davical';
  $c->system_name = 'DAViCal CalDAV Server';

  $c->default_locale = fr_FR.UTF-8;
  $c->admin_email  = 'corentin.marciau@free.fr';
  $c->pg_connect[] = 'dbname=davical user=davical_app';