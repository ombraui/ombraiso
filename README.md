<h1 align="center" style="font-weight: bold;">ombraISO</h1>

<p align="center">
<a href="#tech">Technologies</a>
<a href="#started">Getting Started</a>
<a href="#contribute">Contribute</a> 
</p>

 
<h2 id="tech">💻 Technologies</h2>

- Based on the `releng` archiso profile
- `mkodyseniso` & `mkarchiso`
- Ships with GNOME
  
<h2 id="started">🚀 Getting started</h2>
 
<h3>Prerequisites</h3>

- [archiso](https://wiki.archlinux.org/title/Archiso)
- [Git](https://git-scm.com/)
- [mkombraiso](https://github.com/ombraui/mkombraiso)

Make sure to install both `archiso` and `mkombraiso`!

<h3>Building the ISO</h3>

1. `git clone` the repository and `cd` into it
2. `sudo mkombraiso -v -w /path/to/work_dir -o /path/to/our_dir .`
    The `work_dir` is where the build process happens, the `out_dir` is where the final ISO image will be stored. Specify existing directories, or, if you don't want to make one yourself, specify a path to where it should be - `mkarchiso` will create it.

    `mkombraiso` should be run as root with either sudo or a root user.
3. Optionally, test your ISO with `run_archiso -u -i /path/to/image.iso`
    The Arch Wiki specifies which packages you need to install in order to be able to run it.

<h2 id="contribute">📫 Contribute</h2>

For those who wish to contribute, including ombraUI Developers:

1. Make a fork of the repository.
2. **Switch to the `dev` branch**. Changes made to `main` will be **rejected**.
2. Once you are satisfied with your changes to the code, make a pull request and await approval for a merge.

<h3>Documentations that might help</h3>

[📝 How to create a Pull Request](https://www.atlassian.com/git/tutorials/making-a-pull-request)

[💾 Commit pattern](https://gist.github.com/joshbuchea/6f47e86d2510bce28f8e7f42ae84c716)

<h2> 📝 License </h2>

```
GNU GENERAL PUBLIC LICENSE
Version 3, 29 June 2007
```

Copy of the license can be found: <a href="https://github.com/ombraui/ombraISO/blob/main/LICENSE"> GPL-3.0 license</a>

<hr>

Made with ❤️ by ombraUI Team Members
