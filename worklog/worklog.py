import sys
import os
from notion.client import NotionClient

path = "/Users/hoang/.dotfiles/worklog/"

f = open(path + "worklog.txt", "r")
result = f.read()
f.close()
f = open(path + "view_path.txt", "r")
view_path = f.read()
f.close()

try:
    # Obtain the `token_v2` value by inspecting your browser cookies on a logged-in (non-guest) session on Notion.so
    client = NotionClient(token_v2="0d928170fd99536763cd498fe7e5c49f0568b1c8398ceda5bd3521ac0cdf830b3b343b8cc268bf313fd858c4e3a8b10dddf42c1d134e934befd97c5c1967bcb97cd81c6e77c366b279d390333ed9")

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

except Exception as e:
    print(e)
    # Print last saved
    print(result)
    os._exit(1)
