from aiohttp import web, hdrs
from datetime import datetime

DATETIME_FORMAT = "%Y-%m-%d %H:%M"


async def handler(request: web.Request) -> web.Response:
    user_agent = request.headers.get(hdrs.USER_AGENT, "Anonymous")
    date_time = datetime.now().strftime(DATETIME_FORMAT)
    msg = "You are cool!"

    payload = {
    	"User-Agent": user_agent,
    	"datetime": date_time,
    	"message": msg,
    }

    return web.json_response(payload)


app = web.Application()
app.router.add_get("/", handler)

if __name__ == "__main__":
    web.run_app(app, port=8080)
