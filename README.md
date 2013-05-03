<h3>Config and Install Guide (using Croogo CMS open source)</h3>

Step by step:
<ul>
  <li>1. Create Database with source: locson\app\Config\Schema\croogo150.sql</li>
  <li>2. Copy project to your workspace <b>(remember: rename app/tmp_ to app/tmp)</b></li>
  <li>3. Then, config database in file: locson\app\Config\database.php</li>
  <li>4. Run app with path: 
    <br/>
      - Front-end: http://localhost/locson/
    <br/>
      - Back-end: http://localhost/locson/admin/ (username: admin, password: admindemo)
  </li>
  <li>5. Done.</li>
</ul>

Other Config:
- In app/Config/croogo.php
<ul>
  <li>Configure::write('debug', 1); <b>(recommend change debug = 0 when run app)</b></li>
  <li>Configure::write('Cache.disable', true); <b>(no write cache in app/tmp)</b></li>
  <li>Configure::write('Theme.error',true); <b>(Option is true: show custom error page when error)</b></li>
</ul>
