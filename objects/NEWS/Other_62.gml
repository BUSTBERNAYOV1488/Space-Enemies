if (async_load[? "id"] == http_id && async_load[? "status"] == 0) {
global.site_text = async_load[? "result"];
} else global.site_text = "Нет интернета!"