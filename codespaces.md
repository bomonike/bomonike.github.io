---
lastchange: git commit -m "v004 + remote:codespaces.md"
---

<a target="_blank" href="https://bomonike.github.io/codespaces"><img align="right" width="100" height="100" alt="codespaces.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/codespaces.png?raw=true" />

GitHub Codespaces is a SaaS (Software-as-a-Service) from Microsoft like Google Colab in that it provides a browser-based (remote) <strong>execution environment</strong> for repositories in GitHub.com.

GitHub Codespaces provides servers <strong>virtual machines</strong> for you to write, run, and debug code directly in your browser on a Chromebook or tablet.

No complicated configuration of a development environment locally on your computer is required.

However, you'll need constant connection to a fast internet connection, which can be expensive.

But, unlike Google Colab, Codespaces does not require coding in Jupyter Notebooks.
Codespaces supports many programming languages.

Instances can also be accessed locally on your laptop or desktop from Visual Studio Code, PyCharm, and other IDEs (after installing the GitHub Codespaces extension).

## How Much Does It Cost

To work on <strong>private</strong> repositories in Codespaces, you need to have an Enterprise organization membership.

Students can use Codespaces to work on public repositories for free as part of GitHub's Student Developer Pack at https://education.github.com/pack - which also includes GitHub tutorials on Global Campus, plus:

   * Access to InterviewCake.com
   * <a target="_blank" href="https://www.datacamp.com/tracks/github-foundations">datacamp.com</a>
   * <a target="_blank" href="https://www.educative.io/github-students">Educative.com</a> 30% Off
   * <a target="_blank" href="https://www.notion.so/githubstudentpack">Notion</a> note Education Plus plan, with free unlimited guests, unlimited file uploads, custom websites, additional Notion AI responses — and more.

Students can sign up at
<a target="_blank" href="https://education.github.com/pack">https://education.github.com/pack</a>
and get support from GitHub at <a target="_blank" href="https://support.github.com/contact/education">https://support.github.com/contact/education</a>.

<a target="_blank" href="https://docs.github.com/en/education/explore-the-benefits-of-teaching-and-learning-with-github-education/github-education-for-teachers/about-github-education-for-teachers">BLAH: Teachers</a> cannot access Student Developer Pack, which includes Codespaces. But teachers get <a target="_blank" href="https://docs.github.com/en/copilot/managing-copilot/managing-copilot-as-an-individual-subscriber/managing-your-copilot-subscription/getting-free-access-to-copilot-as-a-student-teacher-or-maintainer">free Individual-level access to Copilot (instead of free 30-day trial)</a>

   <ul>https://github.com/settings/copilot</ul>

PROTIP: Beacause there are monthly limitis for every level, to avoid charges, schedule your codespaces usage. Each GitHub account has a monthly quota of 60 free Codespaces hours per month.
Configuration of more powerful machines would eat that up faster.

Educational GitHub students can use codespaces to work on public repositories for free.

## Create a Codespace

1. In a browser, specify a repository's URL, such as this sample:

   https://github.com/github/haikus-for-codespaces

   There are two ways to create a codespace from a repository:

   A. If you see a green "Use this template" button  (on the upper right) such as shown on <a target="_blank" href="https://docs.github.com/en/codespaces/getting-started/quickstart">github/docs</a>, click it to click "Open in a codespace" on <strong>github.dev</strong>, such as:

   <img alt="codespaces-template-204x119.webp" width="204" height="119" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1732548759/codespaces-template-204x119_kmwmog.png" />

   B. Click the green "<> Code" button:

   <img alt="codespaces-code-820x872.png" width="820" height="872" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1732548760/codespaces-code-820x872_uc14bz.png" />


## Run programs within Codespaces

If there is already a codespace running, click the green "Open in a codespace" button to open a new codespace.

### Run PEP8 Scanner

1. On the lower pane, when the TERMINAL becomes available, to the right of the "$" Terminal prompt, type commands:

1. Install the PEP8 linter in your codespace:
   ```
   pip install flake8
   ```
1. Run the PEP8 linter on your codespace:
   ```
   flake8
   ```
1. If you see any errors, fix them and run the linter again.

### Save the Codespace



### Run Node.js web application

1. On the lower pane, when the TERMINAL becomes available, to the right of the "$" Terminal prompt, type the command to run the web application written in Node.js:
   ```
   npm run dev
   ```
   This command runs the script labeled "dev" in the package.json file, which starts up the web application defined in the repository.

   Other application technologies (Python) have different start commands.

1. At the pop-up window at the lower-right, click the green button to "Open in a codespace" to see a new tab open displaying the running the web application, such as:

   https://improved-guide-rpq746q5wc577p-3000.app.github.dev

<hr />

## Activate
1. Log into your GitHub account.
1. Click on your profile icon at the upper right.
1. Select "Your Codespaces" from the dropdown menu (if you don't see the menu, click the "..." icon to expand it).

Create a New Codespace:
1. Choose the repository and branch you want to work with.
1. Select the location and machine type for your Codespace, then click 'Create Codespace'3.

   Alternatively, you can create a codespace from a template by navigating to the desired template repository and selecting "Open in a codespace"1.

## Provisioning the Environment:
1. Once created, your Codespace will provision a container using the default settings or those specified by a dev container configuration if available2.
1. The Visual Studio Code interface will launch in your web browser, connecting you to the remote environment3.

## Working in a Codespace
Develop Your Application:

1. Use the integrated VS Code editor to write and edit code directly in your browser.
1. Run applications using commands appropriate for your project (e.g., npm run dev for Node.js projects)1.

   View and Test Changes:

1. Forward ports from your Codespace to test web applications in your browser. Click "Open in Browser" when prompted to view running applications12.

   Customize Your Environment:

1. Install VS Code extensions from the marketplace to enhance functionality (e.g., themes, language support)1. Use dotfiles to personalize settings like shell aliases or preferred tools2.

   Collaborate and Share:

1. Share your Codespace URL with teammates for collaborative development using features like Live Share24



## Professional Certification

GitHub Codespaces is covered in the <a target="_blank" href="https://resources.github.com/learn/certifications/">GitHub Certifications program</a>

<a target="_blank" href="https://www.youtube.com/watch?v=tJxI-Z8X8Rs&t=3m47s">
VIDEO</a>: "GitHub Certification Fundamentals: Get Started with Codespaces" by GitHub Product Manager Andrea Griffiths.

## Tutorials

https://aka.ms/github-codespaces

https://learn.microsoft.com/en-us/training/modules/code-with-github-codespaces/
27 min. LEARN: Code with GitHub Codespaces

GitHub Codespaces is a fully configured development environment hosted in the cloud. By using GitHub Codespaces, your workspace, along with all of your configured development environments, is available from any computer with access to the internet.

https://www.youtube.com/watch?v=kvJf8s18Vr4
YOUTUBE: How to use GitHub Codespaces for Coding and Data Science

https://www.youtube.com/watch?v=ozuDPmcC1io&list=PLmsFUfdnGr3wTl-NCblzcrEv2lFSX975-&pp=iAQB
YOUTUBE Playlist: Introduction to Codespaces by Microsoft Reactor
Alfredo Deza uses GitHub Codespaces to run Azure function using Flask using https://github.com/alfredodeza/demo-function

https://www.youtube.com/watch?v=vDXPkAdqSyI
What is GitHub Codespaces?

<a target="_blank" href-"https://www.youtube.com/watch?v=tJxI-Z8X8Rs">VIDEO</a>:
GitHub Certification Fundamentals: Get Started with Codespaces

<a target="_blank" href="https://www.youtube.com/watch?v=-vTY7NvPC1w&1m25s">VIDEO</a>:
Using AI to Write Better React Code w/Liz Myers
ChatGPT
