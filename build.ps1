poetry export --without-hashes -f requirements.txt --output requirements.txt
$version=poetry version -s
docker build . --no-cache -t ajurna/cbwebreader -t ajurna/cbwebreader:$version
docker push ajurna/cbwebreader --all-tags