{
    git clean  -d  -fx .
    git checkout gh-pages
    git add .
    git commit -m "Build Latest"
    git push "https://${{ secrets.ghToken }}@github.com/Matt-Gleich/Matt-Gleich.github.io" || true
} || {
    echo "Nothing new"
}