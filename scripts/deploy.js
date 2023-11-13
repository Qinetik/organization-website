import ghPages from "gh-pages"

ghPages.publish('dist/public', {
    branch: 'gh-pages',
    repo: 'https://github.com/Qinetik/qinetik.github.io.git'
}, (err) => {
    if(err != null){
        console.error(err)
    } else {
        console.log("Deployed successfully")
    }
});