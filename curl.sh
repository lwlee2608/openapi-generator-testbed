
curl -v -X POST \
    localhost:8080/pet \
        -H 'Content-Type: application/json' \
        -d "{
            \"$\" : \"Cat\",
            \"name\" : \"Tom\"
        }"

