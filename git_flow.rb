cheatsheet do
  title 'Git-flow'
  docset_file_name 'Git-flow'
  keyword 'git-flow'
  source_url 'https/github.com/robertwalker/git-flow-cheatset'

  category do
    id 'Create'

    entry do
      name 'Create a git-flow project or convert an existing project to use git-flow'
      notes "
      ```
      git flow init
      ```"
    end
  end

  category do
    id 'Features'

    entry do
      name 'Starting a new feature'
      notes "
      ```
      git flow feature start <feature_name>
      ```"
    end

    entry do
      name 'Finish up a feature'
      notes "
      ```
      git flow feature finish <feature_name>
      ```"
    end

    entry do
      name 'Publish a feature'
      notes "
      ```
      git flow feature publish <feature_name>
      ```"
    end

    entry do
      name 'Getting a published feature'
      notes "
      ```
      git flow feature pull origin <feature_name>
      ```
      You can track a feature on origin by using
      ```
      git flow feature track <feature_name>
      ```"
    end
  end
end
