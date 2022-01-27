#!/bin/bash
function export_func_1() {
  echo "外部関数の出力"
}

function export_slack_notification() {
  message=$@
  res=$(
    curl -XPOST -d "token=$SLACK_API_TOKEN" -d "channel=$CHANNEL" -d "text=$message" -d "username=notification_test" "https://slack.com/api/chat.postMessage"
  )
  echo $res

}
