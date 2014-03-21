cheatsheet do
  title 'Git-svn'
  docset_file_name 'Git-svn'
  keyword 'git-svn'
  source_url 'https://github.com/robertwalker/dash_cheatsets'

  category do
    id 'Cloning & Setup'

    entry do
      name 'Clone a Subversion repository as a Git repository using standard Subversion layout'
      notes "
      ```
      git svn clone -s --prefix=origin/ <subversion-url>
      ```
      Example: `git svn clone -s --prefix=origin/ svn://example.com/repository/MyProject`"
    end

    entry do
      name 'Recursively find all the svn:ignore properties and generate a matching .gitignore file'
      notes "
      ```
      git svn create-ignore
      ```"
    end

    entry do
      name 'Recursively find all the svn:ignore properties and append the output to $GIT_DIR/info/exclude'
      notes "
      ```
      git svn show-ignore >> .git/info/exclude
      ```"
    end
  end

  category do
    id 'Local Changes'

    entry do
      name 'List changed files in your working directory'
      notes "
      ```
      git status
      ```"
    end

    entry do
      name 'List changes to tracked files'
      notes "
      ```
      git diff
      ```"
    end

    entry do
      name 'Stage an untracked file for the next commit'
      notes "
      ```
      git add <file>
      ```"
    end

    entry do
      name 'Stage all changes for the next commit'
      notes "
      ```
      git add .
      ```
      Note: This will also add untracked files to the index."
    end

    entry do
      name 'Commit previously staged changes'
      notes "
      ```
      git commit
      ```"
    end

    entry do
      name 'Commit all local changes in tracked files'
      notes "
      ```
      git commit -a
      ```
      Note: This will not include untracked files. Use `git add .` or `git add <file>` to stage untracked files."
    end

    entry do
      name 'Discard all local changes in your working tree'
      notes "
      ```
      git reset --hard HEAD
      ```
      Warning: This command will discard all local changes to tracked files without warning! Consider this your warning."
    end
  end

  category do
    id 'Commit History'

    entry do
      name 'Show all commits'
      notes "
      ```
      git log
      ```"
    end

    entry do
      name 'Show changes over time for a specific file'
      notes "
      ```
      git log -p <file>
      ```"
    end

    entry do
      name 'Who changed what and when in a specific file'
      notes "
      ```
      git blame <file>
      ```"
    end
  end

  category do
    id 'Branches'

    entry do
      name 'List all local branches'
      notes "
      ```
      git branch
      ```"
    end


    entry do
      name 'List all remote branches'
      notes "
      ```
      git branch -r
      ```
      Note: This lists all branches ever created in the Subversion repository (including deleted ones)."
    end
    entry do
      name 'Switch HEAD branch'
      notes "
      ```
      git checkout <branch>
      ```"
    end

    entry do
      name 'Create a new branch based on your current HEAD'
      notes "
      ```
      git branch <new-branch>
      ```"
    end

    entry do
      name 'Create a new tracking branch based on a remote branch'
      notes "
      ```
      git branch --track <new-branch> <remote-branch>
      ```"
    end

    entry do
      name 'Shortcut for creating a new remote tracking branch and switching to it'
      notes "
      ```
      git checkout -b <new-branch> <remote-branch>
      ```
      Note: This assumes the Git default configuration of `--track` for remote tracking branches."
    end

    entry do
      name 'Delete a local branch'
      notes "
      ```
      git branch -d <branch>
      ```
      Note: Use `git branch -D <branch>` to delete a branch regardless of merge status."
    end
  end

  category do
    id 'Getting & Publishing Updates'

    entry do
      name 'Download all changes from the Subversion remote'
      notes "
      ```
      git svn fetch
      ```"
    end

    entry do
      name 'Rebase you local tracking branch to synchronize with the Subversion remote branch'
      notes "
      ```
      git svn rebase
      ```"
    end

    entry do
      name 'Publish your local commits to the Subversion remote'
      notes "
      ```
      git svn dcommit
      ```"
    end
  end
end
