sh XXX.sh # すいません読み取れませんでした。
gcloud compute ssh --project controller-0 --command 'sh no8-contoroller012-first.sh'
gcloud compute ssh --project controller-1 --command 'sh no8-contoroller012-first.sh'
gcloud compute ssh --project controller-2 --command 'sh no8-contoroller012-first.sh'

sh no8-contoroller012-second.sh

gcloud compute ssh --project worker-0 --command 'sh no9-contoroller012.sh'
gcloud compute ssh --project worker-1 --command 'sh no9-contoroller012.sh'
gcloud compute ssh --project worker-2 --command 'sh no9-contoroller012.sh'

sh no10-mac.sh
# すいません読めませんでしたが、おそらくmac側で実行するシェルを追記ください。
sh no14-cleanup-mac.sh