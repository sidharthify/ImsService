.class public Lcom/mediatek/wfo/impl/WifiPdnHandler;
.super Landroid/os/Handler;
.source "WifiPdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;,
        Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x3e8

.field private static final DEFAULT_MTU_SIZE:I = 0x5dc

.field private static final EVENT_GET_WIFI_CONN_STATE_SUPPORT_INFO:I = 0x3f8

.field public static final EVENT_HANDLE_AIRPLANE_MODE:I = 0x480

.field private static final EVENT_INITIALIZE:I = 0x3f6

.field private static final EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0x3f7

.field public static final EVENT_ON_NATT_KEEP_ALIVE_CHANGED:I = 0x44f

.field public static final EVENT_ON_WIFI_LOCK:I = 0x481

.field public static final EVENT_ON_WIFI_MONITORING_THRESHOLD_CHANGED:I = 0x44d

.field public static final EVENT_ON_WIFI_PDN_ACTIVATE:I = 0x44e

.field private static final EVENT_RADIO_AVAILABLE:I = 0x3ed

.field private static final EVENT_RETRY_CHECK_IF_START_WIFI_SCAN:I = 0x3f2

.field private static final EVENT_RETRY_INIT:I = 0x3f0

.field private static final EVENT_RETRY_UPDATE_LAST_RSSI:I = 0x3f3

.field private static final EVENT_RETRY_UPDATE_WIFI_CONNTECTED_INFO:I = 0x3f1

.field public static final EVENT_SET_NATT_STATUS:I = 0x3ef

.field private static final EVENT_SET_WIFI_ASSOC:I = 0x3eb

.field private static final EVENT_SET_WIFI_ENABLED:I = 0x3ea

.field private static final EVENT_SET_WIFI_IP_ADDR:I = 0x3ec

.field private static final EVENT_SET_WIFI_SIGNAL_STRENGTH:I = 0x3e9

.field private static final EVENT_WIFI_NETWORK_STATE_CHANGE:I = 0x3e8

.field private static final EVENT_WIFI_SCAN:I = 0x3ee

.field private static final EVENT_WIFI_SCAN_AVAILABLE:I = 0x3f4

.field private static final EVENT_WIFI_STATE_CHANGE:I = 0x3f5

.field private static final EWIFIEN_AP_MODE_STATE:I = 0x8

.field private static final EWIFIEN_CAUSE:I = 0x1

.field private static final EWIFIEN_NEED_SEND_AP_MODE:I = 0x10

.field private static final EWIFIEN_NEED_SEND_WIFI_ENABLED:I = 0x4

.field private static final EWIFIEN_WIFI_ENABLED_STATE:I = 0x2

.field private static final EXTRA_WFC_STATUS_KEY:Ljava/lang/String; = "wfc_status"

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final MTK_KEY_WOS_SUPPORT_WFC_IN_FLIGHTMODE:Ljava/lang/String; = "mtk_wos_flight_mode_support_bool"

.field private static final NEED_DEFER:I = 0x1

.field private static final NONE_SSID:Ljava/lang/String; = "<unknown ssid>"

.field private static final NO_NEED_DEFER:I = 0x0

.field private static final PING_PASS_LATENCY:I = 0x32

.field private static final PING_PASS_LOSS_RATE:I = 0x0

.field private static final PROPERTY_MIMS_SUPPORT:Ljava/lang/String; = "persist.vendor.mims_support"

.field private static final PROPERTY_WFC_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.wfc.enable"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final RESPONSE_GET_WIFI_CONN_STATE_SUPPORT_INFO:I = 0x4b5

.field private static final RESPONSE_SET_NATT_KEEP_ALIVE_STATUS:I = 0x4b4

.field private static final RESPONSE_SET_PACKET_FORWARD:I = 0x4b6

.field private static final RESPONSE_SET_WIFI_ASSOC:I = 0x4b2

.field private static final RESPONSE_SET_WIFI_ENABLED:I = 0x4b0

.field private static final RESPONSE_SET_WIFI_IP_ADDR:I = 0x4b3

.field private static final RESPONSE_SET_WIFI_SIGNAL_LEVEL:I = 0x4b1

.field private static final RETRY_TIMEOUT:I = 0x3e8

.field public static final SNR_UNKNOWN:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "WifiPdnHandler"

.field private static final TAG_AVAILABLE:Ljava/lang/String; = "onAvailable"

.field private static final TAG_CAPABILITIES:Ljava/lang/String; = "onCapabilitiesChanged"

.field private static final TAG_LOST:Ljava/lang/String; = "onLost"

.field private static final TAG_PROPERTIES:Ljava/lang/String; = "onLinkPropertiesChanged"

.field private static final TELDBG:Z

.field private static final USR_BUILD:Z

.field private static final WFC_NOTIFY_GO:I = 0x2

.field private static final WFC_REQUEST_PARTIAL_SCAN:Ljava/lang/String; = "com.mediatek.intent.action.WFC_REQUEST_PARTIAL_SCAN"

.field private static final WFC_STATUS_CHANGED:Ljava/lang/String; = "com.mediatek.intent.action.WFC_STATUS_CHANGED"

.field private static final WIFI_IF_NAME:Ljava/lang/String; = "wlan0"

.field private static final WIFI_SCAN_DELAY:I = 0xbb8

.field private static final WIFI_STATE_UI_DISABLING:I = 0x26ac

.field private static mWifiUeMac:Ljava/lang/String;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDeferredNotificationToWifi:Z

.field private mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mHasWiFiDisabledPending:Z

.field private mIfName:Ljava/lang/String;

.field private mIsAirplaneModeChange:Z

.field private mIsAirplaneModeOn:Z

.field private mIsMBBSupport:Z

.field private mIsWifiConnected:Z

.field private mIsWifiEnabled:Z

.field private mLastRssi:I

.field private mLock:Ljava/lang/Object;

.field private mModemReqWifiLock:[Z

.field private mMtu:I

.field private mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

.field private mNetwork:Landroid/net/Network;

.field private mOldIfName:Ljava/lang/String;

.field private mOldWifiConnectedFromNetworkInfo:Z

.field private mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

.field private mPendingMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioState:I

.field private mRatType:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryCount:I

.field private mRssiChange:Z

.field private mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

.field private mSimCount:I

.field private mSsid:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

.field private mTetheringEventHandler:Landroid/os/Handler;

.field private mTetheringManager:Landroid/net/TetheringManager;

.field private mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

.field private mWiFiNetwork:Landroid/net/Network;

.field private mWifiApMac:Ljava/lang/String;

.field private mWifiConnState:I

.field private mWifiConnStateSupportInfo:I

.field private mWifiIpv4Address:Ljava/lang/String;

.field private mWifiIpv4Gateway:Ljava/lang/String;

.field private mWifiIpv4PrefixLen:I

.field private mWifiIpv6Address:Ljava/lang/String;

.field private mWifiIpv6Gateway:Ljava/lang/String;

.field private mWifiIpv6PrefixLen:I

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiLockCount:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPdnExisted:[Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAirplaneModeOn(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMBBSupport(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastRssi(Lcom/mediatek/wfo/impl/WifiPdnHandler;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOldWifiConnectedFromNetworkInfo(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldWifiConnectedFromNetworkInfo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWiFiNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWiFiNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnState(Lcom/mediatek/wfo/impl/WifiPdnHandler;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnStateSupportInfo(Lcom/mediatek/wfo/impl/WifiPdnHandler;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnStateSupportInfo:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastRssi(Lcom/mediatek/wfo/impl/WifiPdnHandler;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOldWifiConnectedFromNetworkInfo(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldWifiConnectedFromNetworkInfo:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRssiChange(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWiFiNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWiFiNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMwiRil(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mignoreVpnCallback(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->ignoreVpnCallback(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misMBBSupported(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isMBBSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPrimaryWifi(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isPrimaryWifi(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetWifiEnabled(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 127
    const-string v0, "02:00:00:00:00:00"

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    .line 232
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 233
    const-string v3, "userdebug"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->USR_BUILD:Z

    .line 234
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simCount"    # I
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 711
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 124
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 125
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldWifiConnectedFromNetworkInfo:Z

    .line 126
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 132
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    .line 133
    iput v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 134
    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 135
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 136
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldIfName:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 140
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    .line 141
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 142
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 143
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 144
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 148
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTetheringEventHandler:Landroid/os/Handler;

    .line 158
    sget-object v1, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    .line 159
    sget-object v1, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->WFC_FEATURE_UNKNOWN:Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    .line 160
    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnStateSupportInfo:I

    .line 163
    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    .line 251
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    .line 253
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mNetwork:Landroid/net/Network;

    .line 254
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWiFiNetwork:Landroid/net/Network;

    .line 256
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    .line 260
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    .line 653
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1969
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$4;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$4;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    .line 712
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    .line 713
    iput p2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    .line 714
    iput-object p4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 716
    const/16 v0, 0x3f6

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 717
    .local v0, "initMsg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 719
    const/16 v1, 0x3f8

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 720
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 721
    return-void
.end method

.method private allowWfcInAirplaneMode()V
    .locals 6

    .line 1395
    const/4 v0, 0x0

    .line 1396
    .local v0, "wfcInApMode":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isAirPlaneMode()Z

    move-result v1

    .line 1397
    .local v1, "isAirPlaneModeOn":Z
    const-string v2, "persist.vendor.mims_support"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "mtk_wos_flight_mode_support_bool"

    if-gt v2, v3, :cond_1

    .line 1398
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMainCapabilityPhoneId()I

    move-result v2

    .line 1399
    .local v2, "phoneId":I
    invoke-direct {p0, v4, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getBooleanCarrierConfig(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1402
    if-nez v0, :cond_0

    .line 1403
    invoke-direct {p0, v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWfcCapabilityByPhoneId(IZ)V

    .line 1405
    .end local v2    # "phoneId":I
    :cond_0
    goto :goto_1

    .line 1406
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v2, v5, :cond_3

    .line 1407
    invoke-direct {p0, v4, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getBooleanCarrierConfig(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1409
    if-nez v0, :cond_2

    .line 1410
    invoke-direct {p0, v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWfcCapabilityByPhoneId(IZ)V

    .line 1406
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1414
    .end local v2    # "i":I
    :cond_3
    :goto_1
    return-void
.end method

.method private broadcastWfcStatusIntent(I)V
    .locals 2
    .param p1, "wfcStatus"    # I

    .line 2128
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    const/16 v1, 0x839

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2129
    return-void
.end method

.method private checkIfstartWifiScan(Z)V
    .locals 4
    .param p1, "scanImmediately"    # Z

    .line 1583
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    .line 1585
    .local v0, "wifiPdnExisted":Z
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    const/16 v2, 0x3ee

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 1587
    if-eqz p1, :cond_1

    .line 1588
    const-string v1, "call WifiManager.startScan()"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1589
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 1590
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 1591
    return-void

    .line 1593
    :cond_0
    const-string v1, "WifiPdnHandler"

    const-string v2, "checkIfstartWifiScan(): WifiManager null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    nop

    .line 1595
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1594
    const/16 v2, 0x3f2

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1596
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1597
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    monitor-exit v3

    .line 1599
    return-void

    .line 1598
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1603
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1604
    const-string v1, "start 3s delay to trigger wifi scan"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1605
    nop

    .line 1606
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1605
    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1609
    :cond_2
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->removeMessages(I)V

    .line 1611
    :cond_3
    :goto_0
    return-void
.end method

.method private checkInvalidSimIdx(ILjava/lang/String;)Z
    .locals 1
    .param p1, "simIdx"    # I
    .param p2, "dbgMsg"    # Ljava/lang/String;

    .line 1903
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1907
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1904
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1905
    const/4 v0, 0x1

    return v0
.end method

.method private checkRadioPowerState()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 502
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getRadioPowerState()I

    move-result v0

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    goto :goto_0

    .line 508
    :cond_1
    const-string v0, "mTelephonyManager is null, keep the original RadioState"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 511
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRadioPowerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method private generateWifiEnableCause(ZZZZZ)I
    .locals 3
    .param p1, "needAPMode"    # Z
    .param p2, "apMode"    # Z
    .param p3, "needWifiEnabled"    # Z
    .param p4, "wifiEnabled"    # Z
    .param p5, "bCause"    # Z

    .line 1329
    const/4 v0, 0x0

    .line 1331
    .local v0, "cause":I
    if-eqz p1, :cond_0

    .line 1332
    or-int/lit8 v0, v0, 0x10

    .line 1334
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    or-int/2addr v0, v2

    .line 1336
    if-eqz p3, :cond_2

    .line 1337
    or-int/lit8 v0, v0, 0x4

    .line 1339
    :cond_2
    if-eqz p4, :cond_3

    const/4 v1, 0x2

    :cond_3
    or-int/2addr v0, v1

    .line 1341
    or-int/2addr v0, p5

    .line 1343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateWifiEnableCause(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1344
    return v0
.end method

.method private getAirplaneModeFromSettings()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 484
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 486
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 487
    .local v0, "value":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAirplaneModeFromSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    if-ne v2, v1, :cond_2

    .line 490
    :cond_1
    const-string v1, "Disable airplane mode after get from setting if radio is on"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    const/4 v0, 0x0

    .line 493
    :cond_2
    return v0

    .line 494
    .end local v0    # "value":Z
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "WifiPdnHandler"

    const-string v2, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    throw v0
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;IZ)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "defaultValue"    # Z

    .line 1436
    const/4 v0, 0x1

    .line 1437
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1438
    const-string v1, "WifiPdnHandler"

    const-string v2, "getBooleanCarrierConfig fail, mContext = null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    return v0

    .line 1441
    :cond_0
    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1443
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getSubId(I)I

    move-result v2

    .line 1444
    .local v2, "subId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanCarrierConfig: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1445
    const/4 v3, 0x0

    .line 1446
    .local v3, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_1

    .line 1447
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1449
    :cond_1
    if-eqz v3, :cond_2

    .line 1450
    invoke-virtual {v3, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 1453
    :cond_2
    const-string v4, "getBooleanCarrierConfig: get from default config"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1454
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1456
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBooleanCarrierConfig sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1457
    return v0
.end method

.method private getMainCapabilityPhoneId()I
    .locals 3

    .line 2013
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 2014
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 2015
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCapabilityPhoneId error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiPdnHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    const/4 v0, -0x1

    .line 2018
    :cond_1
    return v0
.end method

.method private getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 3

    .line 2022
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMainCapabilityPhoneId()I

    move-result v0

    .line 2024
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2026
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1

    .line 2028
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getSubId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 1472
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1473
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 1474
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1475
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 1477
    :cond_0
    return v1
.end method

.method public static getUeWlanMacAddr()Ljava/lang/String;
    .locals 1

    .line 2033
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    return-object v0
.end method

.method private getWifiConnStateSupportInfo()V
    .locals 3

    .line 427
    const-string v0, "getWifiConnStateSupportInfo"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 428
    const/16 v0, 0x4b5

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 429
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_CONN_STATE:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->getWfcConfig(ILandroid/os/Message;)V

    .line 431
    return-void
.end method

.method private handleAirplaneMode()V
    .locals 4

    .line 466
    const/4 v0, 0x0

    .line 468
    .local v0, "isAirplaneModeOn":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getAirplaneModeFromSettings()Z

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 471
    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiPdnHandler"

    const-string v3, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAirplaneMode mIsAirplaneModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 475
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eq v1, v0, :cond_0

    .line 476
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 479
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 480
    return-void
.end method

.method private handleResponse(ILandroid/os/AsyncResult;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "result"    # Landroid/os/AsyncResult;

    .line 516
    return-void
.end method

.method private handleResponseWifiConnStateSupportInfo(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 530
    const-string v0, "WifiPdnHandler"

    if-nez p1, :cond_0

    .line 531
    const-string v1, "ResponseWifiConnStateSupportInfo no ar"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 535
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResponseWifiConnStateSupportInfo exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mRetryCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 539
    const/16 v0, 0x3f8

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 540
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    goto :goto_1

    .line 542
    :cond_1
    iput v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    goto :goto_1

    .line 545
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 546
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 547
    .local v0, "result":I
    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnStateSupportInfo:I

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResponseWifiConnStateSupportInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnStateSupportInfo:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 549
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnStateSupportInfo:I

    sget-object v3, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->WFC_FEATURE_SUPPORTED:Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    .line 550
    invoke-virtual {v3}, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 551
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setupCallbacksForWifiStatusEx()V

    .line 553
    .end local v0    # "result":I
    :cond_3
    goto :goto_0

    .line 554
    :cond_4
    const-string v1, "ResponseWifiConnStateSupportInfo no result"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :goto_0
    iput v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    .line 559
    :goto_1
    return-void
.end method

.method private handleRetry(ILandroid/os/AsyncResult;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "result"    # Landroid/os/AsyncResult;

    .line 519
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRetry already exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPdnHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void

    .line 524
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 525
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 527
    :cond_1
    return-void
.end method

.method private handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V
    .locals 5
    .param p1, "source"    # Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;
    .param p2, "state"    # I

    .line 974
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$5;->$SwitchMap$com$mediatek$wfo$impl$WifiPdnHandler$WifiLockSource:[I

    invoke-virtual {p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Warning: mWifiLockCount: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1014
    :pswitch_0
    const/16 v0, 0x26ac

    if-ne p2, v0, :cond_1

    .line 1015
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    if-nez v0, :cond_8

    .line 1016
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    goto/16 :goto_0

    .line 1019
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    goto/16 :goto_0

    .line 1022
    :cond_1
    if-ne p2, v4, :cond_3

    .line 1024
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    if-eqz v0, :cond_2

    .line 1025
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    .line 1026
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-eqz v0, :cond_8

    .line 1027
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 1028
    const-string v0, "Wi-Fi fwk automaticlly disable defer Wi-Fi off process due to timeout"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_8

    .line 1030
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1032
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 1033
    if-lez v0, :cond_8

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1038
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 1040
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-nez v0, :cond_8

    .line 1041
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1042
    invoke-direct {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 1043
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_4

    .line 1044
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1045
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 1048
    :cond_4
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    goto :goto_0

    .line 977
    :pswitch_1
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-nez v0, :cond_6

    .line 978
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 979
    invoke-direct {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 980
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_5

    .line 981
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 982
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 985
    :cond_5
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 989
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    if-eqz v0, :cond_7

    .line 990
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 991
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    .line 992
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 996
    :cond_7
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-eqz v0, :cond_8

    .line 997
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-nez v0, :cond_8

    .line 998
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 999
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 1000
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_8

    .line 1001
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1003
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 1004
    if-lez v0, :cond_8

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1057
    :cond_8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new handleWifiDefferOff(): WifiLockSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHasWiFiDisabledPending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isWifiDeferOffNeeded(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1060
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDeferredNotificationToWifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1064
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleWifiStateChange(I)V
    .locals 3
    .param p1, "wifiState"    # I

    .line 434
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 435
    const-string v0, "Unexpected error, mWifiManager is null!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 436
    const/16 v0, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 437
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    monitor-exit v2

    .line 440
    return-void

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 443
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWifiStateChange wifiState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 444
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isAirPlaneMode()Z

    move-result v0

    .line 445
    .local v0, "isAirplaneModeOn":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eq v2, v0, :cond_1

    .line 446
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 447
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 448
    const-string v2, "handleWifiStateChange change due to airplane mode change"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 451
    :cond_1
    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-direct {p0, v2, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V

    .line 452
    const/16 v2, 0x26ac

    if-ne p1, v2, :cond_2

    .line 453
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 454
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    goto :goto_0

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 458
    .local v1, "isWifiEnabled":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    if-eq v1, v2, :cond_3

    .line 459
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 460
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 463
    .end local v1    # "isWifiEnabled":Z
    :cond_3
    :goto_0
    return-void
.end method

.method private ignoreVpnCallback(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z
    .locals 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "tagType"    # Ljava/lang/String;

    .line 2147
    if-eqz p1, :cond_0

    .line 2149
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2150
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ignore VPN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 2152
    return v0

    .line 2155
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initTetheringManager()V
    .locals 3

    .line 834
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTetheringManager:Landroid/net/TetheringManager;

    if-eqz v0, :cond_0

    .line 835
    return-void

    .line 838
    :cond_0
    const-string v0, "WifiPdnHandler"

    const-string v1, "initTetheringManager."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v1, "tethering"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTetheringManager:Landroid/net/TetheringManager;

    .line 840
    if-eqz v0, :cond_1

    .line 841
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->registerTetheringEventCallback()V

    goto :goto_0

    .line 843
    :cond_1
    const-string v0, "TetheringManager null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 844
    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 845
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 846
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    monitor-exit v1

    .line 849
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 847
    .restart local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initWifiManager()V
    .locals 4

    .line 800
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 801
    return-void

    .line 804
    :cond_0
    const-string v0, "WifiPdnHandler"

    const-string v1, "initWifiManager."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 806
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 807
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 808
    .local v0, "isWifiEnabled":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    if-eq v0, v2, :cond_1

    .line 809
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 810
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 812
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v3, "WifiOffloadService-Wifi Lock"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 813
    if-eqz v2, :cond_2

    .line 814
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 817
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isMBBSupported()Z

    .line 818
    .end local v0    # "isWifiEnabled":Z
    goto :goto_0

    .line 819
    :cond_3
    const-string v0, "WifiManager null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 820
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 821
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 822
    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 823
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    monitor-exit v1

    .line 827
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 825
    .restart local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initialize()V
    .locals 3

    .line 724
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initWifiManager()V

    .line 726
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 728
    new-instance v1, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-direct {v1, v0}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    .line 729
    new-instance v0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, v2}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    .line 732
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    .line 733
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    .line 735
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRatType:[I

    .line 737
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->initialize(I)V

    .line 739
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize(): mIsAirplaneModeOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 745
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->registerForBroadcast()V

    .line 746
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->registerIndication()V

    .line 748
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setupCallbacksForWifiStatus()V

    .line 751
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 753
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initTetheringManager()V

    .line 757
    return-void
.end method

.method private isAirPlaneMode()Z
    .locals 3

    .line 1461
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1462
    const-string v0, "WifiPdnHandler"

    const-string v2, "isAirPlaneMode: no context!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    return v1

    .line 1465
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 1467
    .local v0, "isAirPlaneMode":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAirPlaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1468
    return v0
.end method

.method private isEccInProgress()Z
    .locals 3

    .line 2109
    const/4 v0, 0x0

    .line 2110
    .local v0, "isInEcc":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 2111
    .local v1, "tm":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 2112
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v0

    .line 2114
    :cond_0
    return v0
.end method

.method private isIfNameChanged()Z
    .locals 2

    .line 1493
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldIfName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1494
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldIfName:Ljava/lang/String;

    .line 1495
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1499
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1496
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMBBSupported()Z
    .locals 2

    .line 2178
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 2179
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isMakeBeforeBreakWifiSwitchingSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    .line 2180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMBBSupported(): mIsMBBSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 2182
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    return v0
.end method

.method private isModemReqWifiLock()Z
    .locals 2

    .line 1921
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 1922
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1924
    const/4 v1, 0x1

    return v1

    .line 1921
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1927
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isPrimaryWifi(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z
    .locals 5
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "tagType"    # Ljava/lang/String;

    .line 2159
    const/4 v0, 0x0

    .line 2160
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v1, 0x1

    .line 2161
    .local v1, "isPrimary":Z
    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    if-eqz v2, :cond_1

    .line 2162
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v2

    .line 2163
    .local v2, "transportInfo":Landroid/net/TransportInfo;
    instance-of v3, v2, Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    .line 2164
    move-object v0, v2

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 2165
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2166
    const/4 v1, 0x0

    .line 2167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": not primary wifi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2171
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": transportInfo cannot cast to WifiInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 2174
    .end local v2    # "transportInfo":Landroid/net/TransportInfo;
    :cond_1
    :goto_0
    return v1
.end method

.method private isWifiDeferOffNeeded()Z
    .locals 1

    .line 961
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isModemReqWifiLock()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2132
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2133
    return-object p1

    .line 2135
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 2136
    .local v1, "maskLength":I
    const-string v2, "*"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 2137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2140
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 2141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2143
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 562
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 621
    :sswitch_0
    const-string v0, "RESPONSE_SET_PACKET_FORWARD"

    return-object v0

    .line 619
    :sswitch_1
    const-string v0, "RESPONSE_GET_WIFI_CONN_STATE_SUPPORT_INFO"

    return-object v0

    .line 597
    :sswitch_2
    const-string v0, "RESPONSE_SET_NATT_KEEP_ALIVE_STATUS"

    return-object v0

    .line 595
    :sswitch_3
    const-string v0, "RESPONSE_SET_WIFI_IP_ADDR"

    return-object v0

    .line 593
    :sswitch_4
    const-string v0, "RESPONSE_SET_WIFI_ASSOC"

    return-object v0

    .line 591
    :sswitch_5
    const-string v0, "RESPONSE_SET_WIFI_SIGNAL_LEVEL"

    return-object v0

    .line 589
    :sswitch_6
    const-string v0, "RESPONSE_SET_WIFI_ENABLED"

    return-object v0

    .line 587
    :sswitch_7
    const-string v0, "EVENT_ON_WIFI_LOCK"

    return-object v0

    .line 601
    :sswitch_8
    const-string v0, "EVENT_HANDLE_AIRPLANE_MODE"

    return-object v0

    .line 581
    :sswitch_9
    const-string v0, "EVENT_ON_NATT_KEEP_ALIVE_CHANGED"

    return-object v0

    .line 579
    :sswitch_a
    const-string v0, "EVENT_ON_WIFI_PDN_ACTIVATE"

    return-object v0

    .line 577
    :sswitch_b
    const-string v0, "EVENT_ON_WIFI_MONITORING_THRESHOLD_CHANGED"

    return-object v0

    .line 599
    :sswitch_c
    const-string v0, "EVENT_GET_WIFI_CONN_STATE_SUPPORT_INFO"

    return-object v0

    .line 617
    :sswitch_d
    const-string v0, "EVENT_MULTI_SIM_CONFIG_CHANGED"

    return-object v0

    .line 615
    :sswitch_e
    const-string v0, "EVENT_INITIALIZE"

    return-object v0

    .line 613
    :sswitch_f
    const-string v0, "EVENT_WIFI_STATE_CHANGE"

    return-object v0

    .line 611
    :sswitch_10
    const-string v0, "EVENT_WIFI_SCAN_AVAILABLE"

    return-object v0

    .line 609
    :sswitch_11
    const-string v0, "EVENT_RETRY_UPDATE_LAST_RSSI"

    return-object v0

    .line 607
    :sswitch_12
    const-string v0, "EVENT_RETRY_CHECK_IF_START_WIFI_SCAN"

    return-object v0

    .line 605
    :sswitch_13
    const-string v0, "EVENT_RETRY_UPDATE_WIFI_CONNTECTED_INFO"

    return-object v0

    .line 603
    :sswitch_14
    const-string v0, "EVENT_RETRY_INIT"

    return-object v0

    .line 585
    :sswitch_15
    const-string v0, "EVENT_SET_NATT_STATUS"

    return-object v0

    .line 583
    :sswitch_16
    const-string v0, "EVENT_WIFI_SCAN"

    return-object v0

    .line 575
    :sswitch_17
    const-string v0, "EVENT_RADIO_AVAILABLE"

    return-object v0

    .line 573
    :sswitch_18
    const-string v0, "EVENT_SET_WIFI_IP_ADDR"

    return-object v0

    .line 571
    :sswitch_19
    const-string v0, "EVENT_SET_WIFI_ASSOC"

    return-object v0

    .line 569
    :sswitch_1a
    const-string v0, "EVENT_SET_WIFI_ENABLED"

    return-object v0

    .line 567
    :sswitch_1b
    const-string v0, "EVENT_SET_WIFI_SIGNAL_STRENGTH"

    return-object v0

    .line 565
    :sswitch_1c
    const-string v0, "EVENT_WIFI_NETWORK_STATE_CHANGE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1c
        0x3e9 -> :sswitch_1b
        0x3ea -> :sswitch_1a
        0x3eb -> :sswitch_19
        0x3ec -> :sswitch_18
        0x3ed -> :sswitch_17
        0x3ee -> :sswitch_16
        0x3ef -> :sswitch_15
        0x3f0 -> :sswitch_14
        0x3f1 -> :sswitch_13
        0x3f2 -> :sswitch_12
        0x3f3 -> :sswitch_11
        0x3f4 -> :sswitch_10
        0x3f5 -> :sswitch_f
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_d
        0x3f8 -> :sswitch_c
        0x44d -> :sswitch_b
        0x44e -> :sswitch_a
        0x44f -> :sswitch_9
        0x480 -> :sswitch_8
        0x481 -> :sswitch_7
        0x4b0 -> :sswitch_6
        0x4b1 -> :sswitch_5
        0x4b2 -> :sswitch_4
        0x4b3 -> :sswitch_3
        0x4b4 -> :sswitch_2
        0x4b5 -> :sswitch_1
        0x4b6 -> :sswitch_0
    .end sparse-switch
.end method

.method private onMultiSimConfigChanged(I)V
    .locals 5
    .param p1, "activeModemCount"    # I

    .line 766
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    .line 768
    .local v0, "prevActiveModemCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMultiSimConfigChanged, phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSimCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiPdnHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    if-ne v0, p1, :cond_0

    return-void

    .line 773
    :cond_0
    iput p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    .line 775
    if-le v0, p1, :cond_1

    goto :goto_1

    .line 778
    :cond_1
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    .line 779
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    .line 780
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRatType:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRatType:[I

    .line 782
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v1, p1}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->notifyMultiSimConfigChanged(I)V

    .line 784
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 785
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x44d

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerRssiThresholdChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 787
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x44e

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnActivated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 789
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x44f

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerNattKeepAliveChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 793
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x481

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiLock(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 797
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method private onNattKeepAliveChanged(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1067
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1068
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 1070
    .local v1, "result":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->handleKeepAliveChanged([Ljava/lang/String;)V

    .line 1071
    return-void
.end method

.method private onRssiMonitorRequest(II[I)V
    .locals 1
    .param p1, "simId"    # I
    .param p2, "size"    # I
    .param p3, "rssiThresholds"    # [I

    .line 1617
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->registerRssiMonitoring(II[I)V

    .line 1618
    return-void
.end method

.method private onWifiLock(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 2081
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2082
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 2084
    .local v1, "result":[Ljava/lang/String;
    const-string v2, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 2085
    const-string v3, "onWifiLock(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    return-void

    .line 2088
    :cond_0
    array-length v3, v1

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 2089
    const-string v3, "onWifiLock(): Bad params"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    return-void

    .line 2094
    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    aget-object v6, v1, v5

    .line 2095
    .local v6, "wlanIface":Ljava/lang/String;
    aget-object v7, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2096
    .local v7, "enableLock":I
    aget-object v8, v1, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2097
    .local v8, "simIdx":I
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isModemReqWifiLock()Z

    move-result v9

    .line 2098
    .local v9, "preModemWifiLockState":Z
    iget-object v10, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    if-nez v7, :cond_2

    move v11, v5

    goto :goto_0

    :cond_2
    move v11, v4

    :goto_0
    aput-boolean v11, v10, v8

    .line 2099
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isModemReqWifiLock()Z

    move-result v10

    if-eq v9, v10, :cond_3

    .line 2100
    sget-object v10, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-direct {p0, v10, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2105
    .end local v6    # "wlanIface":Ljava/lang/String;
    .end local v7    # "enableLock":I
    .end local v8    # "simIdx":I
    .end local v9    # "preModemWifiLockState":Z
    :cond_3
    goto :goto_1

    .line 2102
    :catch_0
    move-exception v6

    .line 2103
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onWifiLock["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v5, v1, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, v1, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v3, v1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2104
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2103
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private onWifiMonitoringThreshouldChanged(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 879
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 880
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 882
    .local v1, "result":[I
    const-string v2, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 883
    const-string v3, "onWifiMonitoringThreshouldChanged(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return-void

    .line 887
    :cond_0
    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move v3, v5

    .line 888
    .local v3, "enable":Z
    :cond_1
    array-length v4, v1

    .line 889
    .local v4, "length":I
    add-int/lit8 v6, v4, -0x1

    aget v6, v1, v6

    .line 891
    .local v6, "simIdx":I
    if-nez v3, :cond_2

    .line 892
    const-string v2, "Turn off RSSI monitoring"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 893
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v2, v6}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->unregisterAllRssiMonitoring(I)V

    .line 894
    return-void

    .line 896
    :cond_2
    aget v7, v1, v5

    .line 897
    .local v7, "count":I
    add-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v5

    if-ge v8, v4, :cond_3

    .line 898
    const-string v5, "onWifiMonitoringThreshouldChanged(): Bad params"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void

    .line 901
    :cond_3
    const-string v2, "onWifiMonitoringThreshouldChanged: invalid SIM id"

    invoke-direct {p0, v6, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 902
    return-void

    .line 905
    :cond_4
    new-array v2, v7, [I

    .line 906
    .local v2, "rssi":[I
    const/4 v5, 0x2

    .line 907
    .local v5, "offset":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_5

    .line 908
    add-int v9, v8, v5

    aget v9, v1, v9

    aput v9, v2, v8

    .line 909
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onWifiMonitoringThreshouldChanged(): rssi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v2, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 907
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 912
    .end local v8    # "i":I
    :cond_5
    invoke-direct {p0, v6, v7, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onRssiMonitorRequest(II[I)V

    .line 915
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateLastRssi()V

    .line 916
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 917
    return-void
.end method

.method private onWifiPdnActivate(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 921
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 922
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 923
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 925
    .local v2, "preWifiPdnExited":Z
    const-string v3, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 926
    const-string v4, "onWifiPdnActivate(): result is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    return-void

    .line 929
    :cond_0
    array-length v4, v1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 930
    const-string v4, "onWifiPdnActivate(): Bad params"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return-void

    .line 933
    :cond_1
    const/4 v3, 0x0

    aget v4, v1, v3

    .line 934
    .local v4, "pdnCount":I
    const/4 v6, 0x1

    aget v7, v1, v6

    .line 936
    .local v7, "simIdx":I
    const-string v8, "onWifiPdnActivate(): invalid SIM id"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 937
    return-void

    .line 939
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v2

    .line 941
    const-string v8, "persist.vendor.mims_support"

    invoke-static {v8, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ge v8, v5, :cond_5

    .line 942
    const-string v5, "MIMS does not support, sync up pdn status to all slots."

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 943
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v5, v8, :cond_4

    .line 944
    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    if-lez v4, :cond_3

    move v9, v6

    goto :goto_1

    :cond_3
    move v9, v3

    :goto_1
    aput-boolean v9, v8, v5

    .line 943
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v5    # "i":I
    :cond_4
    goto :goto_3

    .line 947
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MIMS supported, update pdn status to specific slot["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 948
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    if-lez v4, :cond_6

    goto :goto_2

    :cond_6
    move v6, v3

    :goto_2
    aput-boolean v6, v5, v7

    .line 952
    :goto_3
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 958
    return-void
.end method

.method private registerForBroadcast()V
    .locals 3

    .line 853
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 854
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 855
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 856
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 857
    const-string v1, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 858
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 860
    return-void
.end method

.method private registerIndication()V
    .locals 4

    .line 863
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 864
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x44d

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerRssiThresholdChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 866
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x44e

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnActivated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 868
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x44f

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerNattKeepAliveChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 871
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x481

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiLock(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 874
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setNattKeepAliveStatus(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1573
    const/16 v0, 0x4b4

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1574
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 1575
    .local v9, "config":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    .line 1576
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "wlan0"

    :goto_0
    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->isEnabled()Z

    move-result v3

    .line 1577
    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getSrcIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getSrcPort()I

    move-result v5

    .line 1578
    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getDstIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getDstPort()I

    move-result v7

    .line 1575
    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/wfo/ril/MwiRIL;->setNattKeepAliveStatus(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V

    .line 1579
    return-void
.end method

.method private setWifiAssoc()V
    .locals 13

    .line 1504
    const/16 v0, 0x4b2

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1505
    .local v0, "result":Landroid/os/Message;
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 1506
    .local v1, "mtu":I
    if-nez v1, :cond_0

    .line 1507
    const/16 v1, 0x5dc

    move v10, v1

    goto :goto_0

    .line 1506
    :cond_0
    move v10, v1

    .line 1509
    .end local v1    # "mtu":I
    .local v10, "mtu":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    .line 1510
    .local v1, "wifiConnState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiAssoc() ifName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " associated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 1511
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apMac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ueMac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    .line 1512
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mtu = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wifiConnState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1510
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1514
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 1515
    .local v2, "isWifiConnected":Z
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1516
    const/4 v2, 0x0

    .line 1518
    :cond_1
    iget v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    sget-object v4, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_SWITCH_TO_CELLULAR:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1520
    const/4 v2, 0x0

    .line 1521
    sget-object v3, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v1

    move v11, v1

    move v12, v2

    goto :goto_1

    .line 1518
    :cond_2
    move v11, v1

    move v12, v2

    .line 1523
    .end local v1    # "wifiConnState":I
    .end local v2    # "isWifiConnected":Z
    .local v11, "wifiConnState":I
    .local v12, "isWifiConnected":Z
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v2, "wlan0"

    :goto_2
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    sget-object v7, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    move v3, v12

    move v6, v10

    move v8, v11

    move-object v9, v0

    invoke-virtual/range {v1 .. v9}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiAssociated(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V

    .line 1526
    return-void
.end method

.method private setWifiEnabled()V
    .locals 8

    .line 1348
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v0

    .line 1349
    .local v0, "isInEcc":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAirplaneModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEccInProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1353
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1355
    .local v1, "wifiEnable":Z
    const-string v2, "persist.vendor.mtk.wfc.enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 1356
    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v3

    .line 1357
    .local v7, "bCause":Z
    :goto_0
    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    const/4 v5, 0x1

    move-object v2, p0

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->generateWifiEnableCause(ZZZZZ)I

    move-result v2

    .line 1360
    .local v2, "cause":I
    const/16 v3, 0x4b0

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1361
    .local v3, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    .line 1362
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v5, "wlan0"

    .line 1363
    :goto_1
    nop

    .line 1361
    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiEnabled(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1364
    return-void
.end method

.method private setWifiEnabledWithSyncAPMode()V
    .locals 11

    .line 1367
    const/16 v0, 0x4b0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1368
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v1

    .line 1371
    .local v1, "isInEcc":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getAirplaneModeFromSettings()Z

    move-result v2

    .line 1372
    .local v2, "isAirplaneModeOn":Z
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eq v3, v2, :cond_0

    .line 1373
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 1374
    const-string v3, "setWifiEnabledWithSyncAPMode(): update mIsAirplaneModeOn from settings"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    .end local v2    # "isAirplaneModeOn":Z
    :cond_0
    goto :goto_0

    .line 1376
    :catch_0
    move-exception v2

    .line 1377
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiPdnHandler"

    const-string v4, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiEnabledWithSyncAPMode(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsAirplaneModeOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isEccInProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1384
    const-string v2, "persist.vendor.mtk.wfc.enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 1385
    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v3

    .line 1387
    .local v7, "bCause":Z
    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    move-object v5, p0

    move v10, v7

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->generateWifiEnableCause(ZZZZZ)I

    move-result v2

    .line 1389
    .local v2, "cause":I
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v3

    .line 1390
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v4, "wlan0"

    .line 1391
    :goto_2
    iget-boolean v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1389
    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiEnabled(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1392
    return-void
.end method

.method private setWifiIpAddress()V
    .locals 14

    .line 1529
    const/16 v0, 0x4b3

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1530
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiIpAddr() ifName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ipv4Addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ipv6Addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1531
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ipv4PrefixLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ipv6PrefixLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1530
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1534
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    const-string v2, "wlan0"

    if-eqz v1, :cond_3

    .line 1535
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    .line 1536
    .local v12, "dnsCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    .line 1538
    .local v13, "dnsServers":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1539
    .local v3, "address":Ljava/net/InetAddress;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1540
    const-string v4, ","

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    :cond_0
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1543
    .local v4, "dnsServerAddress":Ljava/lang/String;
    const-string v5, "\""

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiIpAddress(): dnsServerAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1547
    .end local v3    # "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 1549
    .end local v4    # "dnsServerAddress":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    .line 1550
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    :cond_2
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    iget v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 1557
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1549
    move v9, v12

    move-object v11, v0

    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiIpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1558
    .end local v12    # "dnsCount":I
    .end local v13    # "dnsServers":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 1559
    :cond_3
    const-string v1, "WifiPdnHandler"

    const-string v3, "setWifiIpAddress(): mDnsServers = null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    .line 1561
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    :cond_4
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    iget v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "\"\""

    .line 1560
    move-object v11, v0

    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiIpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1570
    :goto_1
    return-void
.end method

.method private setWifiSignalLevel()V
    .locals 4

    .line 1486
    const/16 v0, 0x4b1

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1487
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiSignalLevel(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1488
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    const/16 v3, 0x3c

    invoke-virtual {v1, v2, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiSignalLevel(IILandroid/os/Message;)V

    .line 1489
    return-void
.end method

.method private setupCallbacksForWifiStatus()V
    .locals 3

    .line 1710
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1711
    const-string v0, "Unexpected error, mConnectivityManager = null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1712
    return-void

    .line 1715
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1716
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1717
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1718
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1719
    .local v0, "request":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v2, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;

    invoke-direct {v2, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1900
    return-void
.end method

.method private setupCallbacksForWifiStatusEx()V
    .locals 3

    .line 1621
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1622
    const-string v0, "Unexpected error, mConnectivityManager = null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1623
    return-void

    .line 1626
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1627
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1628
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1629
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1630
    .local v0, "request":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v2, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;

    invoke-direct {v2, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1704
    return-void
.end method

.method private updateLastRssi()V
    .locals 3

    .line 1931
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1932
    const-string v0, "WifiPdnHandler"

    const-string v1, "updateLastRssi(): WifiManager null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    const/16 v0, 0x3f3

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1934
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1935
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1936
    monitor-exit v2

    .line 1937
    return-void

    .line 1936
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1940
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1941
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1

    .line 1942
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    .line 1944
    :cond_1
    return-void
.end method

.method private updateSsidToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;

    .line 1947
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1948
    const-string v0, ""

    return-object v0

    .line 1951
    :cond_0
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1952
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1955
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1956
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1957
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 1958
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1962
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updateWfcCapabilityByPhoneId(IZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "isAirPlaneModeOn"    # Z

    .line 1417
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1418
    .local v0, "imsMgr":Lcom/android/ims/ImsManager;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    .line 1420
    .local v1, "enabled":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWfcCapabilityByPhoneId: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ApMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1423
    const/4 v2, 0x1

    if-nez p2, :cond_0

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1426
    .local v3, "isFeatureOn":Z
    :goto_0
    :try_start_0
    filled-new-array {v2}, [I

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/ims/ImsManager;->changeMmTelCapability(ZI[I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    goto :goto_1

    .line 1430
    :catch_0
    move-exception v2

    .line 1431
    .local v2, "e":Lcom/android/ims/ImsException;
    const-string v4, "WifiPdnHandler"

    const-string v5, "changeMmTelCapability failed."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_1
    return-void
.end method

.method private updateWifiConnectedInfo(I)V
    .locals 28
    .param p1, "isConnected"    # I

    .line 1074
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    .line 1075
    .local v0, "changed":Z
    const/4 v3, 0x0

    .line 1077
    .local v3, "ipAddrChanged":Z
    sget-object v4, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_1

    .line 1078
    iget-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    if-eqz v4, :cond_0

    .line 1079
    invoke-virtual {v4, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->updatedWifiConnectedStatus(Z)V

    .line 1082
    :cond_0
    iget-boolean v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v4, :cond_29

    .line 1083
    iput-boolean v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 1084
    sget-object v4, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v4

    iput v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    .line 1085
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 1086
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 1087
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1088
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    .line 1089
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 1090
    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    .line 1091
    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 1092
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 1095
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 1096
    iput v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 1097
    const/4 v0, 0x1

    .line 1098
    const/4 v3, 0x1

    goto/16 :goto_12

    .line 1100
    :cond_1
    sget-object v4, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_SWITCH_TO_CELLULAR:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 1102
    sget-object v4, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_SWITCH_TO_CELLULAR:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v4

    iput v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    .line 1103
    const/4 v0, 0x1

    goto/16 :goto_12

    .line 1105
    :cond_2
    iget-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    .line 1106
    invoke-virtual {v4, v7}, Lcom/mediatek/wfo/impl/WfcHandler;->updatedWifiConnectedStatus(Z)V

    .line 1109
    :cond_3
    const-string v4, ""

    .local v4, "wifiApMac":Ljava/lang/String;
    const-string v8, ""

    .local v8, "ipv4Address":Ljava/lang/String;
    const-string v9, ""

    .local v9, "ipv6Address":Ljava/lang/String;
    const-string v10, ""

    .local v10, "ifName":Ljava/lang/String;
    const-string v11, ""

    .line 1110
    .local v11, "ssid":Ljava/lang/String;
    const/4 v12, -0x1

    .line 1111
    .local v12, "ipv4PrefixLen":I
    const/4 v13, -0x1

    .line 1112
    .local v13, "ipv6PrefixLen":I
    const/4 v14, 0x0

    .line 1113
    .local v14, "routeIpv4":Landroid/net/RouteInfo;
    const/4 v15, 0x0

    .line 1114
    .local v15, "routeIpv6":Landroid/net/RouteInfo;
    const-string v16, ""

    .line 1115
    .local v16, "ipv4Gateway":Ljava/lang/String;
    const-string v17, ""

    .line 1117
    .local v17, "ipv6Gateway":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1118
    .local v18, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/16 v19, 0x0

    .line 1119
    .local v19, "mtu":I
    sget-object v20, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v5

    if-ne v2, v5, :cond_6

    .line 1120
    iget-boolean v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v5, :cond_4

    iget v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    sget-object v20, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_SWITCH_TO_CELLULAR:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 1121
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 1122
    :cond_4
    const/4 v0, 0x1

    .line 1124
    :cond_5
    iput-boolean v7, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 1126
    sget-object v5, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v5

    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    move v5, v0

    goto :goto_0

    .line 1127
    :cond_6
    sget-object v5, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v5

    if-ne v2, v5, :cond_9

    .line 1128
    iget v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    sget-object v6, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v6

    if-eq v5, v6, :cond_7

    .line 1129
    const/4 v0, 0x1

    .line 1131
    :cond_7
    sget-object v5, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v5

    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    .line 1133
    iget-boolean v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v5, :cond_8

    .line 1134
    const-string v5, "updateWifiConnectedInfo: no need update"

    invoke-virtual {v1, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1135
    return-void

    .line 1133
    :cond_8
    move v5, v0

    goto :goto_0

    .line 1127
    :cond_9
    move v5, v0

    .line 1141
    .end local v0    # "changed":Z
    .local v5, "changed":Z
    :goto_0
    iget-boolean v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1142
    iput-boolean v7, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1143
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 1147
    :cond_a
    const/4 v6, 0x0

    .line 1148
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_b

    .line 1149
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    move/from16 v20, v3

    goto :goto_1

    .line 1151
    :cond_b
    const/16 v0, 0x3f1

    move/from16 v20, v3

    const/4 v7, 0x0

    .end local v3    # "ipAddrChanged":Z
    .local v20, "ipAddrChanged":Z
    invoke-virtual {v1, v0, v2, v7}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 1153
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1154
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    .end local v3    # "msg":Landroid/os/Message;
    :goto_1
    if-eqz v6, :cond_f

    .line 1159
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    .line 1160
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 1161
    .local v0, "tempSsid":Ljava/lang/String;
    const-string v3, "<unknown ssid>"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1162
    const-string v0, ""

    .line 1163
    const-string v3, "updateWifiConnectedInfo: <unknown ssid>"

    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1165
    :cond_c
    invoke-direct {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateSsidToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1167
    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 1168
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v4, :cond_f

    .line 1169
    :cond_d
    if-nez v4, :cond_e

    const-string v3, ""

    goto :goto_2

    :cond_e
    move-object v3, v4

    :goto_2
    iput-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 1170
    const/4 v5, 0x1

    .line 1171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWifiConnectedInfo(): mWifiApMac = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    invoke-direct {v1, v7}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1176
    .end local v0    # "tempSsid":Ljava/lang/String;
    :cond_f
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v3, v0

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v7, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    const/4 v6, 0x0

    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v16    # "ipv4Gateway":Ljava/lang/String;
    .end local v17    # "ipv6Gateway":Ljava/lang/String;
    .end local v18    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v19    # "mtu":I
    .local v2, "ipv6Gateway":Ljava/lang/String;
    .local v4, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v5, "mtu":I
    .local v7, "ipv4Gateway":Ljava/lang/String;
    .local v21, "wifiApMac":Ljava/lang/String;
    .local v22, "changed":Z
    .local v23, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_3
    if-ge v6, v3, :cond_1c

    move/from16 v24, v3

    aget-object v3, v0, v6

    .line 1177
    .local v3, "nw":Landroid/net/Network;
    move-object/from16 v25, v0

    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 1180
    .local v0, "prop":Landroid/net/LinkProperties;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1b

    .line 1181
    move-object/from16 v26, v14

    .end local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .local v26, "routeIpv4":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v27, v15

    .end local v15    # "routeIpv6":Landroid/net/RouteInfo;
    .local v27, "routeIpv6":Landroid/net/RouteInfo;
    const-string v15, "wlan"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_10

    .line 1182
    goto/16 :goto_9

    .line 1185
    :cond_10
    iget-boolean v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    if-eqz v14, :cond_11

    .line 1186
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateWifiConnectedInfo(): ifName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1187
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1186
    invoke-virtual {v1, v14}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1192
    :cond_11
    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v14, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v14

    .line 1193
    .local v14, "nc":Landroid/net/NetworkCapabilities;
    const-string v15, "updateWifiConnectedInfo"

    invoke-direct {v1, v14, v15}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isPrimaryWifi(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 1194
    goto/16 :goto_9

    .line 1198
    :cond_12
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_17

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/LinkAddress;

    .line 1199
    .local v16, "linkAddr":Landroid/net/LinkAddress;
    move-object/from16 v17, v3

    .end local v3    # "nw":Landroid/net/Network;
    .local v17, "nw":Landroid/net/Network;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 1200
    .local v3, "address":Ljava/net/InetAddress;
    move-object/from16 v18, v8

    .end local v8    # "ipv4Address":Ljava/lang/String;
    .local v18, "ipv4Address":Ljava/lang/String;
    instance-of v8, v3, Ljava/net/Inet4Address;

    if-eqz v8, :cond_13

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_13

    .line 1201
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 1202
    .end local v18    # "ipv4Address":Ljava/lang/String;
    .restart local v8    # "ipv4Address":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v12

    goto/16 :goto_6

    .line 1203
    .end local v8    # "ipv4Address":Ljava/lang/String;
    .restart local v18    # "ipv4Address":Ljava/lang/String;
    :cond_13
    instance-of v8, v3, Ljava/net/Inet6Address;

    if-eqz v8, :cond_16

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_16

    .line 1204
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_15

    .line 1208
    invoke-static {v3}, Lcom/android/net/module/util/ConnectivityUtils;->isIPv6ULA(Ljava/net/InetAddress;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 1209
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 1210
    .end local v9    # "ipv6Address":Ljava/lang/String;
    .local v8, "ipv6Address":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v12

    .end local v12    # "ipv4PrefixLen":I
    .local v19, "ipv4PrefixLen":I
    const-string v12, "updateWifiConnectedInfo(): ipv6Address = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1211
    invoke-direct {v1, v8}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1210
    invoke-virtual {v1, v9}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1212
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v9

    move v13, v9

    move/from16 v12, v19

    move-object v9, v8

    move-object/from16 v8, v18

    .end local v13    # "ipv6PrefixLen":I
    .local v9, "ipv6PrefixLen":I
    goto :goto_6

    .line 1214
    .end local v8    # "ipv6Address":Ljava/lang/String;
    .end local v19    # "ipv4PrefixLen":I
    .local v9, "ipv6Address":Ljava/lang/String;
    .restart local v12    # "ipv4PrefixLen":I
    .restart local v13    # "ipv6PrefixLen":I
    :cond_14
    move/from16 v19, v12

    .end local v12    # "ipv4PrefixLen":I
    .restart local v19    # "ipv4PrefixLen":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWifiConnectedInfo(): ipv6ULA = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1215
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1214
    invoke-virtual {v1, v8}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 1204
    .end local v19    # "ipv4PrefixLen":I
    .restart local v12    # "ipv4PrefixLen":I
    :cond_15
    move/from16 v19, v12

    .end local v12    # "ipv4PrefixLen":I
    .restart local v19    # "ipv4PrefixLen":I
    goto :goto_5

    .line 1203
    .end local v19    # "ipv4PrefixLen":I
    .restart local v12    # "ipv4PrefixLen":I
    :cond_16
    move/from16 v19, v12

    .line 1223
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v12    # "ipv4PrefixLen":I
    .end local v16    # "linkAddr":Landroid/net/LinkAddress;
    .restart local v19    # "ipv4PrefixLen":I
    :goto_5
    move-object/from16 v8, v18

    move/from16 v12, v19

    .end local v18    # "ipv4Address":Ljava/lang/String;
    .end local v19    # "ipv4PrefixLen":I
    .local v8, "ipv4Address":Ljava/lang/String;
    .restart local v12    # "ipv4PrefixLen":I
    :goto_6
    move-object/from16 v3, v17

    goto/16 :goto_4

    .line 1225
    .end local v17    # "nw":Landroid/net/Network;
    .local v3, "nw":Landroid/net/Network;
    :cond_17
    move-object/from16 v17, v3

    move-object/from16 v18, v8

    move/from16 v19, v12

    .end local v3    # "nw":Landroid/net/Network;
    .end local v8    # "ipv4Address":Ljava/lang/String;
    .end local v12    # "ipv4PrefixLen":I
    .restart local v17    # "nw":Landroid/net/Network;
    .restart local v18    # "ipv4Address":Ljava/lang/String;
    .restart local v19    # "ipv4PrefixLen":I
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    .line 1226
    .end local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v3, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getMtu()I

    move-result v4

    .line 1228
    .end local v5    # "mtu":I
    .local v4, "mtu":I
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .line 1229
    .local v8, "routeInfo":Landroid/net/RouteInfo;
    invoke-virtual {v8}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 1230
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v12

    .line 1231
    .local v12, "gateway":Ljava/net/InetAddress;
    if-eqz v12, :cond_18

    instance-of v15, v12, Ljava/net/Inet4Address;

    if-eqz v15, :cond_18

    .line 1232
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 1233
    :cond_18
    if-eqz v12, :cond_19

    instance-of v15, v12, Ljava/net/Inet6Address;

    if-eqz v15, :cond_19

    .line 1234
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1237
    .end local v8    # "routeInfo":Landroid/net/RouteInfo;
    .end local v12    # "gateway":Ljava/net/InetAddress;
    :cond_19
    :goto_8
    goto :goto_7

    .line 1239
    :cond_1a
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    move-object/from16 v8, v18

    move/from16 v12, v19

    move v5, v4

    move-object v4, v3

    .end local v10    # "ifName":Ljava/lang/String;
    .local v5, "ifName":Ljava/lang/String;
    goto :goto_9

    .line 1180
    .end local v17    # "nw":Landroid/net/Network;
    .end local v18    # "ipv4Address":Ljava/lang/String;
    .end local v19    # "ipv4PrefixLen":I
    .end local v26    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v27    # "routeIpv6":Landroid/net/RouteInfo;
    .local v3, "nw":Landroid/net/Network;
    .local v4, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v5, "mtu":I
    .local v8, "ipv4Address":Ljava/lang/String;
    .restart local v10    # "ifName":Ljava/lang/String;
    .local v12, "ipv4PrefixLen":I
    .local v14, "routeIpv4":Landroid/net/RouteInfo;
    .restart local v15    # "routeIpv6":Landroid/net/RouteInfo;
    :cond_1b
    move-object/from16 v17, v3

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .line 1176
    .end local v0    # "prop":Landroid/net/LinkProperties;
    .end local v3    # "nw":Landroid/net/Network;
    .end local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v15    # "routeIpv6":Landroid/net/RouteInfo;
    .restart local v26    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v27    # "routeIpv6":Landroid/net/RouteInfo;
    :goto_9
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v24

    move-object/from16 v0, v25

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    goto/16 :goto_3

    .line 1242
    .end local v26    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v27    # "routeIpv6":Landroid/net/RouteInfo;
    .restart local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v15    # "routeIpv6":Landroid/net/RouteInfo;
    :cond_1c
    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .end local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v15    # "routeIpv6":Landroid/net/RouteInfo;
    .restart local v26    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v27    # "routeIpv6":Landroid/net/RouteInfo;
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1243
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, ""

    goto :goto_a

    :cond_1d
    move-object v0, v8

    :goto_a
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 1244
    iput v12, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    .line 1245
    iput-object v7, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    .line 1246
    const/4 v3, 0x1

    .line 1247
    .end local v20    # "ipAddrChanged":Z
    .local v3, "ipAddrChanged":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWifiConnectedInfo(): mWifiIpv4Address = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 1248
    invoke-direct {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1247
    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 1242
    .end local v3    # "ipAddrChanged":Z
    .restart local v20    # "ipAddrChanged":Z
    :cond_1e
    move/from16 v3, v20

    .line 1250
    .end local v20    # "ipAddrChanged":Z
    .restart local v3    # "ipAddrChanged":Z
    :goto_b
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1251
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, ""

    goto :goto_c

    :cond_1f
    move-object v0, v9

    :goto_c
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1252
    iput v13, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 1253
    iput-object v2, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 1254
    const/4 v3, 0x1

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWifiConnectedInfo(): mWifiIpv6Address = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1256
    invoke-direct {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1255
    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_d

    .line 1260
    :cond_20
    const/4 v0, -0x1

    if-eq v13, v0, :cond_21

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1261
    const-string v6, "updateWifiConnectedInfo(): remove ipv6 address"

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1262
    const-string v6, ""

    iput-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1263
    iput v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 1264
    const/4 v3, 0x1

    .line 1268
    :cond_21
    :goto_d
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1269
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldIfName:Ljava/lang/String;

    .line 1270
    if-nez v10, :cond_22

    const-string v0, ""

    goto :goto_e

    :cond_22
    move-object v0, v10

    :goto_e
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    .line 1271
    const/4 v0, 0x1

    .line 1272
    .end local v22    # "changed":Z
    .local v0, "changed":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateWifiConnectedInfo(): mIfName = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " mOldIfName = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldIfName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1274
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1275
    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWlanMacAddrByIfName(Ljava/lang/String;)V

    goto :goto_f

    .line 1268
    .end local v0    # "changed":Z
    .restart local v22    # "changed":Z
    :cond_23
    move/from16 v0, v22

    .line 1279
    .end local v22    # "changed":Z
    .restart local v0    # "changed":Z
    :cond_24
    :goto_f
    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 1280
    if-nez v11, :cond_25

    const-string v6, ""

    goto :goto_10

    :cond_25
    move-object v6, v11

    :goto_10
    iput-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 1281
    const/4 v0, 0x1

    .line 1282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateWifiConnectedInfo(): mSsid = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    invoke-direct {v1, v14}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1285
    :cond_26
    if-eqz v4, :cond_28

    .line 1286
    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    if-nez v6, :cond_27

    .line 1287
    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 1288
    const/4 v3, 0x1

    .line 1289
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateWifiConnectedInfo(): mDnsServers ="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_11

    .line 1291
    :cond_27
    new-instance v6, Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-direct {v6, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1292
    .local v6, "common":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v6, v4}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 1293
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-eq v14, v15, :cond_28

    .line 1294
    const/4 v3, 0x1

    .line 1295
    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 1296
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateWifiConnectedInfo(): mDnsServers ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1301
    .end local v6    # "common":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_28
    :goto_11
    if-ltz v5, :cond_29

    iget v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    if-eq v6, v5, :cond_29

    .line 1302
    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 1303
    const/4 v0, 0x1

    .line 1304
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateWifiConnectedInfo(): mMtu = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1309
    .end local v2    # "ipv6Gateway":Ljava/lang/String;
    .end local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v5    # "mtu":I
    .end local v7    # "ipv4Gateway":Ljava/lang/String;
    .end local v8    # "ipv4Address":Ljava/lang/String;
    .end local v9    # "ipv6Address":Ljava/lang/String;
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "ssid":Ljava/lang/String;
    .end local v12    # "ipv4PrefixLen":I
    .end local v13    # "ipv6PrefixLen":I
    .end local v21    # "wifiApMac":Ljava/lang/String;
    .end local v23    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v26    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v27    # "routeIpv6":Landroid/net/RouteInfo;
    :cond_29
    :goto_12
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 1311
    if-eqz v0, :cond_2a

    .line 1312
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiAssoc()V

    .line 1315
    :cond_2a
    if-eqz v3, :cond_2b

    .line 1316
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiIpAddress()V

    .line 1319
    :cond_2b
    iget-boolean v2, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v2, :cond_2c

    iget-boolean v2, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    if-eqz v2, :cond_2c

    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWifiConnectedInfo(): mRssiChange = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1321
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 1324
    :cond_2c
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    .line 1325
    return-void

    .line 1155
    .end local v0    # "changed":Z
    .local v3, "msg":Landroid/os/Message;
    .local v4, "wifiApMac":Ljava/lang/String;
    .local v5, "changed":Z
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v8    # "ipv4Address":Ljava/lang/String;
    .restart local v9    # "ipv6Address":Ljava/lang/String;
    .restart local v10    # "ifName":Ljava/lang/String;
    .restart local v11    # "ssid":Ljava/lang/String;
    .restart local v12    # "ipv4PrefixLen":I
    .restart local v13    # "ipv6PrefixLen":I
    .restart local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v15    # "routeIpv6":Landroid/net/RouteInfo;
    .local v16, "ipv4Gateway":Ljava/lang/String;
    .local v17, "ipv6Gateway":Ljava/lang/String;
    .local v18, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v19, "mtu":I
    .restart local v20    # "ipAddrChanged":Z
    :catchall_0
    move-exception v0

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .end local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v15    # "routeIpv6":Landroid/net/RouteInfo;
    .restart local v26    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v27    # "routeIpv6":Landroid/net/RouteInfo;
    :goto_13
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_13
.end method

.method private updateWlanMacAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "ifName"    # Ljava/lang/String;

    .line 2052
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    .local v0, "wnif":Ljava/net/NetworkInterface;
    const-string v1, ""

    if-nez v0, :cond_0

    .line 2054
    :try_start_1
    const-string v2, "updateWlanMacAddr wnif == null"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 2055
    return-object v1

    .line 2057
    :cond_0
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 2058
    .local v2, "macBytes":[B
    if-nez v2, :cond_1

    .line 2059
    const-string v3, "updateWlanMacAddr macBytes == null"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 2060
    return-object v1

    .line 2063
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2064
    .local v1, "res1":Ljava/lang/StringBuilder;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_2

    aget-byte v7, v2, v5

    .line 2065
    .local v7, "b":B
    const-string v8, "%02X:"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    nop

    .end local v7    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2068
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 2069
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2071
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 2073
    .end local v0    # "wnif":Ljava/net/NetworkInterface;
    .end local v1    # "res1":Ljava/lang/StringBuilder;
    .end local v2    # "macBytes":[B
    :catch_0
    move-exception v0

    .line 2074
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWlanMacAddr exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiPdnHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method private updateWlanMacAddrByIfName(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifName"    # Ljava/lang/String;

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWlanMacAddrByIfName ifName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 2039
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWlanMacAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2040
    .local v0, "currentUeMac":Ljava/lang/String;
    const-string v1, "02:00:00:00:00:00"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2044
    :cond_0
    sget-object v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2045
    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    .line 2046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWlanMacAddrByIfName mWifiUeMac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 2048
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 628
    return-object p0
.end method

.method public getLastRssi()I
    .locals 1

    .line 1966
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 418
    :sswitch_0
    goto/16 :goto_3

    .line 360
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 361
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponseWifiConnStateSupportInfo(Landroid/os/AsyncResult;)V

    .line 362
    goto/16 :goto_3

    .line 356
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 357
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3ef

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponse(ILandroid/os/AsyncResult;)V

    .line 358
    goto/16 :goto_3

    .line 352
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 353
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3ec

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponse(ILandroid/os/AsyncResult;)V

    .line 354
    goto/16 :goto_3

    .line 348
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 349
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3eb

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponse(ILandroid/os/AsyncResult;)V

    .line 350
    goto/16 :goto_3

    .line 344
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 345
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3e9

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponse(ILandroid/os/AsyncResult;)V

    .line 346
    goto/16 :goto_3

    .line 340
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 341
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3ea

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponse(ILandroid/os/AsyncResult;)V

    .line 342
    goto/16 :goto_3

    .line 335
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiLock(Landroid/os/Message;)V

    .line 336
    goto/16 :goto_3

    .line 364
    :sswitch_8
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleAirplaneMode()V

    .line 365
    goto/16 :goto_3

    .line 332
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onNattKeepAliveChanged(Landroid/os/Message;)V

    .line 333
    goto/16 :goto_3

    .line 329
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiPdnActivate(Landroid/os/Message;)V

    .line 330
    goto/16 :goto_3

    .line 326
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiMonitoringThreshouldChanged(Landroid/os/Message;)V

    .line 327
    goto/16 :goto_3

    .line 413
    :sswitch_c
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getWifiConnStateSupportInfo()V

    .line 414
    goto/16 :goto_3

    .line 407
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 408
    .local v0, "activeModemCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_MULTI_SIM_CONFIG_CHANGED, activeModemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onMultiSimConfigChanged(I)V

    .line 410
    goto/16 :goto_3

    .line 403
    .end local v0    # "activeModemCount":I
    :sswitch_e
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initialize()V

    .line 404
    goto/16 :goto_3

    .line 399
    :sswitch_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiStateChange(I)V

    .line 400
    goto/16 :goto_3

    .line 389
    :sswitch_10
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 391
    .local v2, "retryMsg":Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 393
    .end local v2    # "retryMsg":Landroid/os/Message;
    goto :goto_0

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 395
    monitor-exit v0

    .line 396
    goto/16 :goto_3

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 384
    :sswitch_11
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateLastRssi()V

    .line 385
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 386
    goto/16 :goto_3

    .line 378
    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 379
    .local v0, "scanImmediately":Z
    const-string v1, "WifiPdnHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry checkIfstartWifiScan, scanImmediately: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 381
    goto/16 :goto_3

    .line 373
    .end local v0    # "scanImmediately":Z
    :sswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 374
    .local v0, "isConnected":I
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWifiConnectedInfo(I)V

    .line 375
    goto/16 :goto_3

    .line 368
    .end local v0    # "isConnected":I
    :sswitch_14
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initWifiManager()V

    .line 369
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initTetheringManager()V

    .line 370
    goto/16 :goto_3

    .line 321
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setNattKeepAliveStatus(Landroid/os/Message;)V

    .line 322
    goto/16 :goto_3

    .line 318
    :sswitch_16
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 319
    goto/16 :goto_3

    .line 296
    :sswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync airplane mode to MD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 297
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    if-eqz v0, :cond_1

    .line 298
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 299
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->allowWfcInAirplaneMode()V

    .line 300
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabledWithSyncAPMode()V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->initWifiApmState()V

    .line 308
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiAssoc()V

    .line 309
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 310
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v0, :cond_5

    .line 311
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 312
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiIpAddress()V

    .line 313
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    goto :goto_3

    .line 292
    :sswitch_18
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiIpAddress()V

    .line 293
    goto :goto_3

    .line 289
    :sswitch_19
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiAssoc()V

    .line 290
    goto :goto_3

    .line 286
    :sswitch_1a
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 287
    goto :goto_3

    .line 280
    :sswitch_1b
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v0, :cond_5

    .line 281
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 282
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    goto :goto_3

    .line 269
    :sswitch_1c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 270
    .restart local v0    # "isConnected":I
    if-nez v0, :cond_3

    .line 271
    const-string v1, "wifi is disconnect, notify packet keep alive to stop"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-virtual {v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->notifyWifiDisconnect()V

    goto :goto_2

    .line 274
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, "wlan0"

    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWlanMacAddrByIfName(Ljava/lang/String;)V

    .line 276
    :goto_2
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWifiConnectedInfo(I)V

    .line 277
    nop

    .line 424
    .end local v0    # "isConnected":I
    :cond_5
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1c
        0x3e9 -> :sswitch_1b
        0x3ea -> :sswitch_1a
        0x3eb -> :sswitch_19
        0x3ec -> :sswitch_18
        0x3ed -> :sswitch_17
        0x3ee -> :sswitch_16
        0x3ef -> :sswitch_15
        0x3f0 -> :sswitch_14
        0x3f1 -> :sswitch_13
        0x3f2 -> :sswitch_12
        0x3f3 -> :sswitch_11
        0x3f4 -> :sswitch_10
        0x3f5 -> :sswitch_f
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_d
        0x3f8 -> :sswitch_c
        0x44d -> :sswitch_b
        0x44e -> :sswitch_a
        0x44f -> :sswitch_9
        0x480 -> :sswitch_8
        0x481 -> :sswitch_7
        0x4b0 -> :sswitch_6
        0x4b1 -> :sswitch_5
        0x4b2 -> :sswitch_4
        0x4b3 -> :sswitch_3
        0x4b4 -> :sswitch_2
        0x4b5 -> :sswitch_1
        0x4b6 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleRadioStateChanged(II)V
    .locals 3
    .param p1, "simIdx"    # I
    .param p2, "intRadioState"    # I

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRadioStateChanged intRadioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 633
    iput p2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    .line 634
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    .line 635
    const-string v0, "send EVENT_RADIO_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 636
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v0

    .line 638
    .local v0, "isInEcc":Z
    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-ne p2, v1, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v2, :cond_1

    .line 640
    :cond_0
    const-string v2, "Disable airplane mode if radio is on"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 641
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 642
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 645
    :cond_1
    if-ne p2, v1, :cond_2

    .line 646
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyForRadioAvailable()V

    .line 648
    :cond_2
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 649
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 651
    .end local v0    # "isInEcc":Z
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public isWifiConnected()Z
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    return v0
.end method

.method public isWifiPdnExisted()Z
    .locals 3

    .line 1911
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 1912
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiPdnExisted: found WiFi PDN on SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1914
    const/4 v1, 0x1

    return v1

    .line 1911
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1917
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2118
    sget-boolean v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->USR_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->TELDBG:Z

    if-eqz v0, :cond_1

    .line 2119
    :cond_0
    const-string v0, "WifiPdnHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    :cond_1
    return-void
.end method

.method protected notifyMultiSimConfigChanged(I[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 2
    .param p1, "activeModemCount"    # I
    .param p2, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 760
    iput-object p2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 761
    const/16 v0, 0x3f7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 762
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 763
    return-void
.end method

.method public registerTetheringEventCallback()V
    .locals 3

    .line 2003
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTetheringEventHandler:Landroid/os/Handler;

    .line 2004
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTetheringManager:Landroid/net/TetheringManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTetheringEventHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 2005
    return-void
.end method

.method public setWfcHandler(Lcom/mediatek/wfo/impl/WfcHandler;)V
    .locals 0
    .param p1, "wfcHandler"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 2124
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 2125
    return-void
.end method

.method public setWifiOff()V
    .locals 1

    .line 1481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1482
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 1483
    return-void
.end method
