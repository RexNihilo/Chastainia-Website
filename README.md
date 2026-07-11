# ChastainIA Website

Static consulting website for ChastainIA.com.

## Local Preview

From this folder:

```powershell
py -m http.server 5173
```

Then open:

```text
http://localhost:5173
```

## Site Structure

- `index.html` - homepage
- `services.html` - service offerings
- `industries.html` - industry focus areas
- `case-studies.html` - case study layout and initial residential elevator case study
- `about.html` - owner-led consultancy background
- `contact.html` - contact form UI using a mailto action
- `privacy.html` - simple privacy notice
- `styles.css` - shared responsive design system
- `site.js` - mobile navigation behavior
- `assets/analytics-hero.png` - generated hero image
- `nginx.conf` - nginx static-site config
- `Dockerfile` - optional nginx container image build

## Contact Form Integration Point

The contact form currently uses `mailto:carey@chastainia.com` so it does not pretend to submit to a backend service. Before production, replace the form `action` with a real form endpoint or connect it to the server-side handler used by your hosting environment.

## Nginx Container Build

```powershell
docker build -t chastainia-website .
docker run --rm -p 8080:80 chastainia-website
```
