aliyun eci DescribeContainerGroups \
  --RegionId ap-northeast-1 \
  --ContainerGroupName testdemo \
  --output cols=ContainerGroupId,Status \
  --connect-timeout 5 --read-timeout 10 \
  2>&1 || true # Capture output/errors and don't fail script immediately
