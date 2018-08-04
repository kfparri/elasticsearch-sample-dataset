$jsonBody = '{
    "mappings": {
     "doc": {
      "properties": {
       "speaker": {"type": "keyword"},
       "play_name": {"type": "keyword"},
       "line_id": {"type": "integer"},
       "speech_number": {"type": "integer"}
      }
     }
    }
   }'

Invoke-RestMethod -Method Put -ContentType 'application/json' -Uri http://localhost:9200/shakespeare -Body $jsonBody -Verbose | Format-List *

$jsonBody = '{
    "mappings": {
      "log": {
        "properties": {
          "geo": {
            "properties": {
              "coordinates": {
                "type": "geo_point"
              }
            }
          }
        }
      }
    }
  }'

  Invoke-RestMethod -Method Put -ContentType 'application/json' -Uri http://localhost:9200/logstash-2015.05.18 -Body $jsonBody -Verbose | Format-List *

  $jsonBody = '{
    "mappings": {
      "log": {
        "properties": {
          "geo": {
            "properties": {
              "coordinates": {
                "type": "geo_point"
              }
            }
          }
        }
      }
    }
  }'

  Invoke-RestMethod -Method Put -ContentType 'application/json' -Uri http://localhost:9200/logstash-2015.05.19 -Body $jsonBody -Verbose | Format-List *

  $jsonBody = '{
    "mappings": {
      "log": {
        "properties": {
          "geo": {
            "properties": {
              "coordinates": {
                "type": "geo_point"
              }
            }
          }
        }
      }
    }
  }'

Invoke-RestMethod -Method Put -ContentType 'application/json' -Uri http://localhost:9200/logstash-2015.05.20 -Body $jsonBody -Verbose | Format-List *

Invoke-RestMethod "http://localhost:9200/bank/account/_bulk?pretty" -Method Post -ContentType 'application/x-ndjson' -InFile "accounts.json"
Invoke-RestMethod "http://localhost:9200/shakespeare/doc/_bulk?pretty" -Method Post -ContentType 'application/x-ndjson' -InFile "shakespeare_6.0.json"
Invoke-RestMethod "http://localhost:9200/_bulk?pretty" -Method Post -ContentType 'application/x-ndjson' -InFile "logs.jsonl"