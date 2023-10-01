import ghPages from "gh-pages"

ghPages.publish('dist', {
    branch: 'gh-pages',
    repo: 'https://github.com/Qinetik/anique.git'
}, (err) => {
    if(err != null){
        console.error(err)
    } else {
        console.log("Deployed successfully")
    }
});