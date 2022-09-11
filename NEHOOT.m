#import <QQ350722326/QQ350722326.h>
#import <objc/runtime.h>
#import <QQ350722326/SCLAlertView.h>
//支持新版BSPHP2.2.4 软件高级配置 接收/发送封包加密: bsphp_3des_vi  数据输出格式:bsphp_json 接收/输出Sgin验证都必须写 带有[KEY] 大小
//全局服务器地址
#define  BSPHP_HOST  @"https://3333/AppEn.php?appid=413113&m=safdf3456215212"
//通信key
#define BSPHP_MUTUALKEY @"a937734e33a8565c42766543313453a7b5405"
//数据加密密码
#define BSPHP_PASSWORD @"JJBKJSFsfjjJvfNVHMJ"
//接收Sgin验证 注意必须填写 并且有[KEY]
#define BSPHP_INSGIN @"[KEY]FDHGDDFSD"
//输出Sgin验证 注意必须填写 并且有[KEY]
#define BSPHP_TOSGIN @"[KEY]JFYHFTGRFFED"
//版本
#define JN_VERSION @"v1.0"

//是否验证版本 1 验证 0不验证不弹版本
#define YZ_BANBEN 1

//是否谈公告 1 验证 0 不验证不弹公告
#define YZ_GONGGAO 1

//到期时间弹窗 1 仅首次弹窗提示到期时间 0每次重启都弹窗提示到期时间
#define YZ_YANZHENG 1

//是否检测广告-跟踪 1 开启跟踪 0 无要求 开启的话检测到0000-000-000机器码会提示弹窗
#define YZ_IDFA 0

//是否使用UDID 1使用UDID, 0使用IDFA
#define UDIDORIDFA 1

//如果使用udid获取描述文件 需要udid.php上传到域名指定目录
#define  UDID_HOST  @"http://mEyrEadar.cn/UDID/"

//加密秘钥 这个需要修改bsphp站点目录下 /include/applibapi/encryption 的bsphp_3des_vi.php文件秘钥 双击编辑搜索bsphp666 有三处这个是BS官方默认的
//不想被破解就请修改掉 三个地方都改一样的秘钥 并且填入以下 #define gIv
#define YZ_gIv   @"aDGERGH"

//弹窗是否过直播 1过0不过 过直播的话截图 录屏 直播 是看不到验证弹窗的
#define YZ_GZB 1

//多少秒启动验证 用于延迟启动验证 某些APP启动会刷新UI如王者荣耀 验证弹窗会消失 因此延迟 单位/秒
#define YCQD 0

// 是否检测VPN代理 1 检测代理闪退 0 不验证代理
#define VPN 1
//宏拼接勿动
#define ZFC [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%d|%d|%d|%d|%d|%d|%d|%@|%d",BSPHP_HOST,BSPHP_MUTUALKEY,BSPHP_PASSWORD,BSPHP_INSGIN,BSPHP_TOSGIN,JN_VERSION,UDID_HOST,YZ_YANZHENG,YZ_BANBEN,YZ_GONGGAO,UDIDORIDFA,VPN,YZ_IDFA,YZ_GZB,YZ_gIv,YCQD]

@implementation NSURL (hook)
+(void)load
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[QQ350722326 alloc] QQ350722326:^(NSString * _Nonnull Date) {
            //验证后你的逻辑代码
            
        } PJ:ZFC];
    });

}

@end

