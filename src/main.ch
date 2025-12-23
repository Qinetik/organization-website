func writePage(path : std::string_view, dirName : std::string_view, pageTitle : std::string_view, renderFn : (p : &mut HtmlPage) => void) {
    var fullDir = std::string()
    fullDir.append_view(path)
    if(!dirName.empty()) {
        fullDir.append('/')
        fullDir.append_view(dirName)
        fs::create_dir_all(fullDir.data())
    }
    
    var page = HtmlPage()
    renderFn(page)
    
    var fileName = std::string("index")
    if(dirName.empty() && pageTitle.equals("404")) {
        fileName = std::string("404")
    }
    
    page.writeToDirectory(std::string_view(fullDir.data(), fullDir.size()), fileName.to_view())
}

public func main(argc : int, argv : **char) : int {

    // creating the base directory
    var path = std::string()
    if(argc < 2) {
        // lets use build dir instead
        const build_dir = intrinsics::get_build_dir();
        path.append_char_ptr(build_dir)
        path.append_char_ptr("/output")
        printf("outputting in the default directory at %s\n", path.data());
    } else {
        path.append_char_ptr(argv[1])
    }

    fs::create_dir_all(path.data());

    const outPath = path.to_view()

    printf("Generating pages...\n");
    
    writePage(outPath, "", "Qinetik | Innovative App Development", (p : &mut HtmlPage) => { MainPage(p) })
    writePage(outPath, "", "404", (p : &mut HtmlPage) => { NotFoundPage(p) })
    
    writePage(outPath, "contact", "Contact | Qinetik", (p : &mut HtmlPage) => { ContactPage(p) })
    writePage(outPath, "privacy", "Privacy Policy | Qinetik", (p : &mut HtmlPage) => { PrivacyPage(p) })
    writePage(outPath, "terms", "Terms of Service | Qinetik", (p : &mut HtmlPage) => { TermsPage(p) })
    writePage(outPath, "delete-data-request", "Delete Data Request | Qinetik", (p : &mut HtmlPage) => { DeleteDataRequestPage(p) })
    
    writePage(outPath, "apps/timeline", "Timeline | Qinetik", (p : &mut HtmlPage) => { AppTimelinePage(p) })
    writePage(outPath, "apps/easytodo", "easyToDo | Qinetik", (p : &mut HtmlPage) => { AppEasyToDoPage(p) })
    writePage(outPath, "apps/123mind", "123Mind | Qinetik", (p : &mut HtmlPage) => { AppMindNodePage(p) })
    writePage(outPath, "apps/sketchable", "Sketchable | Qinetik", (p : &mut HtmlPage) => { AppSketchablePage(p) })
    writePage(outPath, "apps/quiznetik", "Quiznetik | Qinetik", (p : &mut HtmlPage) => { AppQuiznetikPage(p) })
    
    writePage(outPath, "docs/timeline", "Timeline Docs | Qinetik", (p : &mut HtmlPage) => { TimelineDocsIndex(p) })
    writePage(outPath, "docs/timeline/create", "Create Note - Docs | Qinetik", (p : &mut HtmlPage) => { TimelineDocsCreate(p) })
    writePage(outPath, "docs/timeline/organize", "Organize - Docs | Qinetik", (p : &mut HtmlPage) => { TimelineDocsOrganize(p) })
    writePage(outPath, "docs/timeline/manage-notebooks", "Manage Notebooks - Docs | Qinetik", (p : &mut HtmlPage) => { TimelineDocsManageNotebooks(p) })
    writePage(outPath, "docs/timeline/archive-color", "Archive, Color | Qinetik", (p : &mut HtmlPage) => { TimelineDocsArchiveColor(p) })
    writePage(outPath, "docs/timeline/image-audio", "Images & Audio - Docs | Qinetik", (p : &mut HtmlPage) => { TimelineDocsImageAudio(p) })
    writePage(outPath, "docs/timeline/code-math", "Code & Math - Docs | Qinetik", (p : &mut HtmlPage) => { TimelineDocsCodeMath(p) })
    writePage(outPath, "docs/timeline/sketch", "Drawing - Docs | Qinetik", (p : &mut HtmlPage) => { TimelineDocsSketch(p) })
    writePage(outPath, "docs/timeline/export", "Export - Docs | Qinetik", (p : &mut HtmlPage) => { TimelineDocsExport(p) })

    const srcAssetsDir = std::string(intrinsics::get_module_dir())
    srcAssetsDir.append_char_ptr("/../assets")
    
    var outAssetsDir = std::string(path.data());
    outAssetsDir.append_char_ptr("/assets")

    printf("Copying assets...\n");
    fs::copy_directory(srcAssetsDir.data(), outAssetsDir.data(), fs::CopyOptions.Recursive)

    printf("Website generation complete!\n");

    return 0;
}
