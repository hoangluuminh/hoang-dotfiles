import sys
import os
from notion.client import NotionClient

path = "/Users/owner/.dotfiles/worklog/"

f = open(path + "worklog.txt", "r")
result = f.read()
f.close()
f = open(path + "view_path.txt", "r")
view_path = f.read()
f.close()

try:
    # Obtain the `token_v2` value by inspecting your browser cookies on a logged-in (non-guest) session on Notion.so
    client = NotionClient(token_v2="3b14149669efc4e6d6d6e76b2b3e3ec0735fec7a74001df37b6907bd191f8aa71585baa351e7d9ff6c3ccd9517135c0db030607f025d04c66cb52a4ea38dab905bf9530ced9ed72d62ad2c6a0331")

    #  page = client.get_block(view_path)
    cv = client.get_collection_view(view_path);

    sort_params = [{
        "direction": "descending",
        "property": "created_time"
    }]
    filter_params = {
        "filters": [
            {
                "filter": {
                    "value": {
                        "type": "exact",
                        "value": "Working"
                    },
                    "operator": "enum_is"
                },
                "property": "OCKe"
            }
        ],
        "operator": "and"
    }

    result_rows = cv.build_query(sort=sort_params,filter=filter_params).execute()
    if result_rows.__len__() > 0:
        result = result_rows[0].name
    else:
        result = "[No task.]"

    f = open(path + "worklog.txt", "w")
    f.write(result)
    f.close()
    print(result, file = sys.stdout)

    os._exit(0)

except:
    # Print last saved
    print(result)
    os._exit(1)
