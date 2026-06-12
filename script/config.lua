return {
    -- 通知类型: 本固件为从机, 仅通过串口转发到上位机 (ESP32-C3)
    NOTIFY_TYPE = "serial",
    --
    -- 定时查询流量间隔, 单位毫秒, 设置为 0 关闭 (建议检查 util_mobile.lua 文件中运营商号码和查询代码是否正确, 以免发错短信导致扣费, 收到查询结果短信发送通知会消耗流量)
    QUERY_TRAFFIC_INTERVAL = 0,
    --
    -- 定时基站定位间隔, 单位毫秒, 设置为 0 关闭 (定位成功后会追加到通知内容后面, 基站定位本身会消耗流量, 通知内容增加也会导致流量消耗增加)
    LOCATION_INTERVAL = 0,
    --
    -- 定时开关飞行模式间隔, 单位毫秒, 设置为 0 关闭
    FLYMODE_INTERVAL = 1000 * 60 * 60 * 12,
    --
    -- 定时同步时间间隔, 单位毫秒, 设置为 0 关闭
    SNTP_INTERVAL = 1000 * 60 * 60 * 6,
    --
    -- 定时上报间隔, 单位毫秒, 设置为 0 关闭 (定时触发消息上报)
    REPORT_INTERVAL = 0,
    --
    -- 开机通知 (会消耗流量)
    BOOT_NOTIFY = true,
    --
    -- 通知内容追加更多信息 (通知内容增加会导致流量消耗增加)
    NOTIFY_APPEND_MORE_INFO = true,
    --
    -- 通知最大重发次数
    NOTIFY_RETRY_MAX = 20,
    --
    -- 本机号码, 优先使用 mobile.number() 接口获取, 如果获取不到则使用此号码
    FALLBACK_LOCAL_NUMBER = "+8618888888888",
    --
    -- SIM 卡 pin 码
    PIN_CODE = "",
    --
    -- 短信控制白名单号码, 为空或注释掉, 表示禁止所有号码
    -- 短信格式示例: SMS,10086,查询流量
    -- 配置示例: SMS_CONTROL_WHITELIST_NUMBERS = { "18xxxxxxx", "18xxxxxxx", "18xxxxxxx" }
    SMS_CONTROL_WHITELIST_NUMBERS = {},
}
