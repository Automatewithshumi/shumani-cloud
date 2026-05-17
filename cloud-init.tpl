#!/bin/bash
apt-get update -y
apt-get install -y nginx
cat > /var/www/html/index.html <<'HTML'
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Portfolio</title>
  <style>
    body { font-family: Arial, sans-serif; background: #f3f4f6; margin: 0; padding: 0; }
    .page { max-width: 860px; margin: auto; padding: 3rem 2rem; color: #111; }
    header { margin-bottom: 2rem; }
    h1 { font-size: 2.5rem; margin: 0; }
    a { color: #2563eb; text-decoration: none; }
    .card { background: #fff; border-radius: 16px; padding: 1.75rem; box-shadow: 0 12px 40px rgba(15, 23, 42, 0.08); margin-bottom: 1.5rem; }
    .links a { display: inline-block; margin-right: 1rem; }
  </style>
</head>
<body>
  <div class="page">
    <header>
      <h1>My GitHub Portfolio</h1>
      <p>Welcome! This portfolio is hosted on an Azure VM managed by Terraform.</p>
    </header>
    <div class="card">
      <h2>About Me</h2>
      <p>I build projects and share them on GitHub. This website is served by Nginx on Ubuntu.</p>
      <p>See my work here:</p>
      <div class="links">
        <a href="https://github.com/Automatewithshumi/shumani-cloud/tree/main" target="_blank">GitHub Branch: main</a>
      </div>
    </div>
    <div class="card">
      <h2>Deployment</h2>
      <p>The VM was deployed via Terraform and configured at startup using cloud-init.</p>
    </div>
  </div>
</body>
</html>
HTML
systemctl enable nginx
systemctl restart nginx
chmod 644 /var/www/html/index.html
