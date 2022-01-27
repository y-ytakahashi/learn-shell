# 外部関数の読み込み
. func.sh

export_func_1

# 外部関数を読み込みSlackに通知を送る
df=$(df -h | grep "disk1s1s1")
export_slack_notification  $(echo -e "$df")