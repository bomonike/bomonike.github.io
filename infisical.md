---
layout: post
date: "2026-07-22"
lastchange: "v039 + intro @infisical.md"
url: https://bomonike.github.io/infisical
file: "infisical"
title: "infisical"
excerpt: "Keep secrets off AI agents with proxy via a stateless SaaS (unlike HashiCorp Vault)"
tags: [Rust, Security, DevSecOps]
image:
# rustops-1900x500.png
  feature: https://user-images.githubusercontent.com/300046/136715984-3033af38-810d-4b29-a555-aac392b374ac.png
  credit: rustops.org
  creditlink: https://www.rust-lang.org/
comments: true
created: "2021-10-03"
---
<i>{{ page.excerpt }}</i>

## What's the problem?

<a target="_blank" href="https://www.youtube.com/watch?v=AkyMmDSX8b4">VIDEO</a>:
Traditionally, when a computer client program makes an HTTP API call <strong>directly</strong> to a server, that client adds a "permission slip" ("API key") among HTTP request authorization headers.

API keys need to be treated as the secrets they are because whoever holds that key can conduct the transaction.

When autonomous AI agents are given API keys to conduct transactions, those agents have been known to be tricked into <strong>exfiltrating</strong> API key secrets to attackers.
AI agents create new attack surfaces. 
See <a target="_blank" href="https://snyk.io/blog/toxicskills-malicious-ai-agent-skills-clawhub/">Snyk's report on how widespread vulnerabilities are</a>.

Infisical was open-sourced Nov 2022 at<br />
<a target="_blank" href="https://github.com/Infisical/">https://github.com/Infisical</a>

<a target="_blank" href="https://github.com/Infisical/agent-vault/">https://github.com/Infisical/agent-vault</a> open sources their Agent Vault credentials proxy.

It makes it so AI agents don't handle API keys.

Infisical's Agent Vault credentials broker is a man-in-the-middle proxy (like the mitmproxy utility) that <strong>intercepts</strong> HTTP traffic in order to <strong>inject</strong> credentials on the wire.

Infisical's proxy approach enables <strong>dynamic</strong> creation of API key values.

Infisical provides <strong>templates</strong> that know how to place secrets accurately in specific apps.

Infisical wraps CLI commands as well as HTTP.

<a target="_blank" href="https://infisical.com">infisical.com</a> says the software is an:

   > "All-in-one platform to securely manage application secrets, certificates, and privileged access across cloud, on-prem, and AI infrastructure."


## Questions

QUESTION: Does Infisical work with customer-facing API Management software like Kong which generate API keys?

QUESTION: Does Infisical provide a Zero Trust approach where a new account and password is created for each access?

Mutual TLS authentication?


## Infisical the company

Infisical makes money from running a deploy cloud.

What does the name mean? in-fisical as like invisible, in-physical, not-physical like a Post-it note.

<a target="_blank" href="https://www.youtube.com/watch?v=qDumDlXcMkg">VIDEO</a>:
Founded via Y-Combinator W23 and a $16 M Series A led by Elad Gil, Infisical is HQ'd at the <a target="_blank" href="https://www.loopnet.com/Listing/235-2nd-St-San-Francisco-CA/40483148/">brick-fronted 235 2nd St</a> STE 110, San Francisco, CA 94105, in SoMA, SouthEast of the Market St. BART stop, across from The Clancy Marriott hotel. Cnet is in the building. <a target="_blank" href="https://www.builtinsf.com/company/infisical/jobs">jobs</a>

Led by Cornell classmates 
<a target="_blank" href="https://www.linkedin.com/in/vmatsiiako/">Vlad Matsiiako</a>,
<a target="_blank" href="https://www.linkedin.com/in/maidul98/">Maidul Islam</a>,
<a target="_blank" href="https://www.linkedin.com/in/tony-d-a104a6125/">Tony Dang</a>,

AEs <a target="_blank" href="https://www.linkedin.com/in/diegoaranda512/">Diego Aranda</a>
Ashwin Punj


## YouTube videos

   * https://www.youtube.com/@infisical_os official
   * https://www.youtube.com/watch?v=EzDQC7nY3YY = "Manage Secrets in Local Development (without .env)"
   * https://www.youtube.com/watch?v=oU2nNBwlOTA = "The Best Way to Manage .env Variables in Docker (Compose, Secrets & More)"
   * https://www.youtube.com/watch?v=AkyMmDSX8b4 = How Agent Vault Works: Credential Brokering for AI Agents
   * https://www.youtube.com/watch?v=5juDO2796ds vs. Hashicorp

Josh Geissler:
   * https://www.youtube.com/watch?v=Kf_sKXuv-RY = Infisical Secrets Management for Beginners

Elestio
   * https://www.youtube.com/watch?v=TujNVL6NQX0&pp=0gcJCZkLAYcqIYzv = "Infisical: Open Source Secrets Management Platform"

Christian Lempa
   * https://www.youtube.com/watch?v=kGKQ-j4jTg0 = Better HomeLab Secret Management // Infisical Tutorial



## Start

1. Sign up for an account at
   https://app.infisical.com/

1. Organization slug & Contact
   https://app.infisical.com/organizations/.../settings?selectedTab=tab-org-general

1. Edit your secrets vault and create entry <tt>INFISICAL_ORG="..."</tt>
   
1. At https://app.infisical.com/organizations/.../projects/secret-management
   Click "Add New Project" and type ___ characters.
1. Edit your secrets vault and create entry <tt>INFISICAL_PROJECT_ID="..."</tt>
1. At https://app.infisical.com/organizations/.../projects/secret-management/.../overview
https://infisical.com/docs/sdks/languages/rust
   Leave "Development" shown and click "Add Secret".
1. At the slide-out from the right, type at least 15 chars in the Key field. 
   Include in the name the API host name, and a date like -261231 after a dash. 
1. Edit your secrets vault and create entry <tt>INFISICAL_SECRET_KEY="..."</tt>

1. Switch to generate a Base64-encoded UUID7 of least 32 chars to emulate an API key given to you.
1. At the slide-out from the right, paste in the Value field above Key generated.
1. Edit your secrets vault and create entry <tt>INFISICAL_SECRET_VAL="..."</tt>
1. Click "Create Secret".


   ### Machine Identity

1. In your Infisical dashboard, navigate to Organization Settings > Access Control > Machine Identities 
   https://app.infisical.com/organizations/.../access-management?selectedTab=identities
   <img alt="infisical.org.machine.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1784567418/infisical.org.machine_f9iefe.png" />

1. Click "Create Organization Machine Identity" at the right.
1. Name according to your Naming Conventions, such as site-type-sequence-date ("mayo-003-260720").
1. Edit your secrets vault and create entry <tt>INFISICAL_MACHINE_NAME="..."</tt>
   This is used for human documentation.
1. Edit your secrets vault and create entry <tt>INFISICAL_MACHINE_ID="..."</tt>
1. Add to project.

   ### Client ID & secret password

1. Edit your secrets vault and create entry <tt>INFISICAL_CLIENT_NAME="..."</tt>
1. Select Role: "Member", "Admin", or "No Access".
1. Optionally, add metadata such as location.
1. Click the Create identity button for the UUID v4 to be created from 122 bits of random data (with 6 bits used for the version and variant flags). The first character of the fourth group (8407) is 8. The digit 8, 9, A, or B in this position indicates RFC 4122 compliance (the standard variant used by almost all modern systems).
1. Click the clipboard icon on the left to get the ID in your Clipboard.
1. Edit your secrets vault and create entry <tt>INFISICAL_CLIENT_ID="..."</tt>
   This is a non-sensitive identifier, similar to a username.

1. Switch to an app to generate the Client password (secret) for copy in your Clipboard. Switch back.
1. Click "Add Client Secret" for the modal pop-up.
1. Paste the secret in the "Description" field. Leave the TTL and Max Number of Uses at the default of 0. Click "Create".
1. Click the copy icon to the right of "Client Secret" value. It has 64 hex characters, which corresponds to 64 × 4 = 256 bits of underlying entropy if it’s truly random.
1. Click "Close".
1. Edit your secrets vault and create entry <tt>INFISICAL_CLIENT_SECRET="..."</tt>

   ### Role

1. Give your identity a descriptive Name and assign it an appropriate Role. The role determines what the identity can access at the organization level.

1. After creation, you'll be prompted to configure an authentication method. Ensure Universal Auth is selected.


CAUTION: No installer for direct macOS install (just Docker).

1. Install XCode commands, Git, Docker, Docker Compose, etc.
1. Navigate to a folder to create a GitHub repo.
1. Download the latest branch:
   ```sh
   git clone https://github.com/Infisical/infisical.git --depth 1
   du -sh  infisical
   cd infisical
   ```
   <pre>
   2.4G	infisical
   </pre>

   ### Services

1. ??? To avoid these messages when running the next command (docker compose):
   <pre>
   WARN[0000] The "PING_IDENTITY_DEVOPS_USER" variable is not set. Defaulting to a blank string. 
   WARN[0000] The "PING_IDENTITY_DEVOPS_KEY" variable is not set. Defaulting to a blank string. 
   WARN[0000] /Users/johndoe/bomonike/infisical/docker-compose.dev.yml: the attribute `version` is obsolete, it will be ignored, please remove it to avoid potential confusion 
   env file /Users/johndoe/bomonike/infisical/.env not found: stat /Users/johndoe/bomonike/infisical/.env: no such file or directory
   </pre>

   <a id="Services"></a>

1. Edit <a target="_blank" href="https://github.com/Infisical/infisical/blob/main/docker-compose.dev.yml">docker-compose.dev.yml</a>

   | Seq | Service | container/image | port | DD |
   |  1 | nginx   | infisical-dev-nginx | 8080:80 | DD |
   |  2 | db      | postgres:14-alpine  | 5432:5432 | DD |
   |  3 | redis   | infisical-dev-redis | 6379:6379 | DD |
   |  4 | clickhouse | clickhouse/clickhouse-server:25.12.5 | 8123:812<br />9000:9000 | DD |
   |  5 | redis-commander | infisical-dev-redis-commander | 8085:8081<br />6379 | DD |
   |  6 | bull-board  | infisical-dev-bull-board | 3008:3000<br />6379 | - |
   |  7 | db-test   | infisical-dev-alpine | 5430:5432 | - |
   |  8 | backend  | infisical-dev-api | 4000:4000<br />9464:9464 OTEL/Prometheus<br />9229:9229 debugger | DD |
   |  9 | prometheus  | prom/prometheus | 9090:9090 | - |
   | 10 | otel-collector  | - | 1888:1888 # pprof extension<br />8888:8888 # Prometheus metrics exposed by the Collector<br />8889:8889 # Prometheus exporter metrics<br />13133:13133 # health_check extension<br />4317:4317 # OTLP gRPC receiver<br />4318:4318 # OTLP http receiver<br />55679:55679 # zpages extension | - |
   | 11 | grafana | - | 3005:3000 | - |
   | 12 | frontend | infisical-dev-frontend | - | DD |
   | 13 | backend-go | infisical-dev-api-go | 4040:4040<br />6379 redis | - |
   | 14 | pgadmin | dpage/pgadmin4 | 5050:80 | DD |
   | 15 | smtp-server | infisical-dev-smtp-server | 1025:1025 # SMTP server<br />8025:8025 # Web UI | DD |
   | 16 | openldap | osixia/openldap:1.5.0 | 389:389<br />636:636 | - |
   | 17 | phpldapadmin | - | 6433:80 | - |
   | 18 | keycloak | - | 8088:8080 | - |
   | 19 | keycloak-config | - | 8080 | - |
   | 20 | pingfederate | pingidentity/pingfederate:2604| 9999:9999 # admin console<br />9031:9031 runtime (SAML/OIDC/SCIM) | - |
   | 21 | samba-ad | nowsci/samba-domain | 1389:389 ldap (mapped off 389 to coexist with the openldap profile<br />1636:636 # ldaps<br />88:88 # kerberos & udp | - |
   | 22 | authentik-postgres | postgres:16-alpine | - | - |
   | 23 | authentik-server | ghcr.io/goauthentik/server:2026.2.2 | 9100:9000 | - |
   | 24 | authentik-worker | - | - | - |

1. To avoid "Error: It seems there is already a Binary at '/usr/local/bin/docker-credential-osxkeychain'
   ```sh
   sudo rm /usr/local/bin/docker-credential-osxkeychain
   brew uninstall --cask docker
   sudo rm -rf /usr/local/bin/docker
   ls -ld ~/.docker ~/Library/Containers/com.docker.* ~/Library/Group\ Containers/group.com.docker
   ```
1. Install <strong>Docker Desktop</strong> if it's not already running.
   https://docs.docker.com/desktop/setup/install/mac-install/
   ```sh
   brew install --cask docker
   ```
   Manual entry of password is needed.
   
   The Docker icon should now appear at the top of the screen.
   <pre>
   🍺  docker-desktop was successfully installed!
   </pre>

   Docker Desktop is installed at /Applications/Docker.app.

1. Confirm version:
   ```sh
   docker --version
   ```
   At time of writing:
   <pre>
   Docker version 29.4.0, build 9d7ad9f
   </pre>

1. From the top of the Apple top bar, start the <strong>Docker Desktop</strong> if it's not already running.
   ```sh
   open ~/Applications/Docker.app
   ```
   Type password.
1. When the Docker Desktop pops up, select "Personal" and your personal email address (such as gmail).
1. Get your Docker password from your personal password vault.
1. Click "Always allow auth.docker.com to open links of this type in the associated app."
1. Click "Open Docker".

   ### Start dev environment

1. Create a blank ".env" file to avoid this message in the next command:
   
   TODO: Specify the .env file containing Infisical secrets defined above.
   See https://www.youtube.com/watch?v=cr-e7Zp9UtE
   <pre>
   env file /Users/johndoe/bomonike/infisical/.env not found: stat /Users/johndoe/bomonike/infisical/.env: no such file or directory
   </pre>
   ```sh
   touch .env
   ```
1. Download and start the dev environment (while at pwd = infisical folder)
   ```Bash
   docker compose -f docker-compose.dev.yml up --build --force-recreate --env-file .env.dev 
   ```
   If you get an error message like this: ???
   <pre>
   WARN[0000] /Users/johndoe/bomonike/infisical/docker-compose.dev.yml: the attribute `version` is obsolete, it will be ignored, please remove it to avoid potential confusion 
   </pre>
1. List Docker images that should have been downloaded:
   ```sh
   docker images
   ```
   <pre>
   IMAGE                                   ID             DISK USAGE   CONTENT SIZE   EXTRA
   clickhouse/clickhouse-server:25.12.5    146446d552f4        802MB             0B    U   
   dpage/pgadmin4:latest                   25d050dd489c        527MB             0B    U   
   infisical-backend:latest                d0eddfa7b889       3.45GB             0B    U   
   infisical-frontend:latest               0325179cad3d       1.01GB             0B    U   
   lytrax/mailhog:latest                   0fbb2f7c9dec        325MB             0B    U   
   nginx:latest                            f46d99881311        181MB             0B    U   
   postgres:14-alpine                      109edae7ae8d        284MB             0B    U   
   redis:latest                            cbe38bd4d562        164MB             0B    U   
   rediscommander/redis-commander:latest   778af9bd6397       77.8MB             0B    U   
   </pre>

1. Switch to browser to access default URL:
   <a href="http://localhost:8080">http://localhost:8080</a>

1. Press Ctrl+C to stop streaming logs
1. Shut down <a href="#Services">all serices</a> for the Infisical dev server:
   ```Bash
   docker compose -f docker-compose.dev.yml down
   ```
1. Start server with queues:
   ```bash
   docker compose -f docker-compose.dev.yml --profile queue up
   ```

   Single-server services (no API Gateway, Auth):
   * Infisical server (Stateless API + Web UI in TypeScript, Go)
   * PostgreSQL (source of truth: users, projects, audit logs, secrets, etc.)
   * Redis caching & background jobs

   Alternative is Linux (Debian/Ubuntu, RHEL, etc.) package infisical-ctl 

   Managed cloud option is app.inphysical.com

   ### Local Self-Hosted on macOS

   (Not for production)

1. See https://www.youtube.com/watch?v=cr-e7Zp9UtE

   ### CLI client

1. On macOS,
   ```bash
   brew install infisical/get-cli/infisical
   ```
1. Login
   ```bash
   infisical login
   ```
1. Initialize project defined above:
   ```bash
   infisical init
   ```
   <pre>
   Important: the Infisical CLI Linux package repository is moving off Cloudsmith.
   What's happening: Cloudsmith stops serving on September 16, 2026. After that, installing or
   updating the CLI on Linux from the old Cloudsmith URL (apt, yum/dnf, apk) will fail.
   What to do: repoint your machine to the new host (artifacts-cli.infisical.com).
   Migration steps: https://infisical.com/docs/cli/cloudsmith-migration
   &nbsp;
   Use the arrow keys to navigate: ↓ ↑ → ← 
   ? Select your hosting option: 
      Infisical Cloud (US Region)
      Infisical Cloud (EU Region)
   ▸ Self-Hosting or Dedicated Instance
   </pre>
1. Cursor to "Self-Hosting" and press Enter.
   <pre>
   ✔ Self-Hosting or Dedicated Instance
   Use the arrow keys to navigate: ↓ ↑ → ← 
   ? Which domain would you like to use?: 
   </pre>
1. Type http://localhost for:
   <pre>
   Domain: http://localhost
   &nbsp;
   Please proceed to your browser to complete the login process.
   If the browser doesn't open automatically, please open this address in your browser: http://localhost/login?callback_port=53629 
   &nbsp;
   Once login is completed via browser, the CLI should be authenticated automatically.
   However, if browser fails to communicate with the CLI, please paste the token from the browser below.
   &nbsp;
   Paste your browser token here: __
   </pre>
1. ??? FIXME: where's the token?

1. List what ports are listening:
   ```Sh
   sudo lsof -i -P | grep LISTEN
   ```

   ### FIXME: Secrets Gateway

   You should see a screen such as this:
   <img alt="infisical-broke.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1784618318/infisical-broke_pziaih.png" />

1. If you see "unavilable", click "Copy Report" and switch to an editor and paste to see like:
   <pre>
   route: /login
   error: AxiosError
   message: Request failed with status code 502
   status: 502
   time: 2026-07-21 18:17:01 UTC
   response: "<html>\r\n<head><title>502 Bad Gateway</title></head>\r\n<body>\r\n<center><h1>502 Bad Gateway</h1></center>\r\n<hr><center>nginx/1.31.3</center>\r\n</body>\r\n</html>\r\n"
   </pre>

   ### License pricing

   To run a <strong>Secrets gateway</strong>, an Enterprise subscription is needed.
   That's also the case for <a target="_blank" href="https://www.microsoft.com/en-us/security/business/security-101/what-is-scim">SCIM Automated Provisioning/Deprovisioning</a>, LDAP, Groups, <a target="_blank" href="https://en.wikipedia.org/wiki/Key_Management_Interoperability_Protocol">KMIP</a>, KMS, HSM, SLA, SOC2.

   An <a target="_blank" href="https://infisical.com/pricing">"Pro Plus" $18/month subscription</a> is needed to:
   
   * rotate secrets (that are static)
   * have different versions of the same secret
   * Expose and handle honey tokens (to detect leaks)
   * SAML SSO for authentication
   * Role-based access controls for authorization
   * IP Allowlisting to allow only specific client IP addresses to get through
   * 90-day audit log retention
   * Priority customer support

   BTW, in 2023, HashiCorp switched Vault from MPL to BSL license so it cannot be used in “competitive” products. But their definition of “competitive” is rather vague.

1. To stop server, press Control+C:
   ```bash
   docker compose -f docker-compose.dev.yml --profile queue down
   ```
1. How much memory is it using?
   ```bash
   docker stats --no-stream --format "table {{.Name}}\t{{.MemUsage}}"
   ```
   <pre>
   NAME                            MEM USAGE / LIMIT
   infisical-dev-nginx             12.04MiB / 7.652GiB
   infisical-dev-frontend          706.8MiB / 7.652GiB
   infisical-dev-api               55.57MiB / 7.652GiB
   infisical-pgadmin-1             257.5MiB / 7.652GiB
   infisical-dev-redis-commander   41.79MiB / 7.652GiB
   infisical-dev-bull-board        55.99MiB / 7.652GiB
   infisical-dev-smtp-server       14.37MiB / 7.652GiB
   infisical-dev-clickhouse        1.896GiB / 7.652GiB
   infisical-dev-redis             16.3MiB / 7.652GiB
   infisical-db-1                  18.12MiB / 7.652GiB
   </pre>
   Not shown are columns <a target="_blank" href="https://www.docker.com/blog/how-to-monitor-container-memory-and-cpu-usage-in-docker-desktop/">Monitoring</a>
   <pre>
   CONTAINER ID, CPU %, MEM %     NET I/O           BLOCK I/O         PIDS
   </pre>


   ### Pull secrets to CLI client

   For a CLI client app to pull secrets from an existing Infisical instance
   (in the cloud or your own server):
   Have Infisical fetch secrets for the selected project/environment and pass them into npm run dev as env vars:

1. Run client NodeJs in dev mode:
   ```bash
   infisical run --env=dev -- npm run dev
   ```


1. ??? Confirm: Check if a specific secret exists in Infisical and made available to the process as an environment variable when the command starts.


   ### Rust Client using Infiscal

* https://infisical.com/docs/sdks/languages/rust

1. Navigate to the folder for git to create a new repository.
1. git clone https://github.com/bomonike/infisical/ ???
1. Navigate to your
1. Click "Maybe later" to dismiss the "Invite your team" pop-up. ???

   ```sh
   cargo add infisical
   ```
   <pre>
    Updating crates.io index
      Adding infisical v0.0.3 to dependencies
    Updating crates.io index
     Locking 1 package to latest Rust 1.96.0 compatible version
      Adding infisical v0.0.3
   </pre>




<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
