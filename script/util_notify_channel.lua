-- 通知渠道: 本固件为从机, 仅保留 serial (通过串口转发到上位机, 如 ESP32-C3)
return {
    -- 发送到 serial
    ["serial"] = function(msg)
        uart.write(1, msg)
        log.info("util_notify", "serial", "消息已转发到串口")
        sys.wait(1000)
        return 200
    end,
}
