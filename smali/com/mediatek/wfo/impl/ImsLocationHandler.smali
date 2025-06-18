.class public Lcom/mediatek/wfo/impl/ImsLocationHandler;
.super Landroid/os/Handler;
.source "ImsLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;,
        Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;,
        Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;
    }
.end annotation


# static fields
.field private static final ACTION_LOCATION_CACHE:Ljava/lang/String; = "com.mediatek.intent.action.LOCATION_HANDLE"

.field private static final BASE:I = 0xbb8

.field private static final BROADCAST_FLAG_ENABLE:I = 0x1

.field private static final CACHE_DISABLE:I = 0x0

.field private static final CACHE_ENABLE:I = 0x1

.field private static final CACHE_ENABLE_EXTRA:Ljava/lang/String; = "enable_location_handle"

.field private static final COUNTRY_CODE_HK:Ljava/lang/String; = "HK"

.field private static final DEFAULT_CONFIDENCE_LEVEL:I = 0x44

.field private static final ENGLOAD:Z

.field private static final EVENT_ALL_RETRY_GET_LOCATION_REQUST:I = 0xbc0

.field private static final EVENT_DIALING_E911:I = 0xbbe

.field private static final EVENT_GET_LAST_KNOWN_LOCATION:I = 0xbb9

.field public static final EVENT_GET_LOCATION_REQUEST:I = 0xbb8

.field private static final EVENT_HANDLE_LAST_KNOWN_LOCATION_RESPONSE:I = 0xbbb

.field private static final EVENT_HANDLE_NETWORK_LOCATION_RESPONSE:I = 0xbba

.field private static final EVENT_LOCATION_CACHE:I = 0xbc3

.field private static final EVENT_LOCATION_MODE_CHANGED:I = 0xbc1

.field private static final EVENT_LOCATION_PROVIDERS_CHANGED:I = 0xbc5

.field private static final EVENT_REQUEST_NETWORK_LOCATION:I = 0xbc2

.field private static final EVENT_RETRY_GET_LOCATION_REQUEST:I = 0xbbf

.field private static final EVENT_RETRY_NETWORK_LOCATION_REQUEST:I = 0xbc4

.field private static final EVENT_SET_COUNTRY_CODE:I = 0xbbd

.field private static final EVENT_SET_LOCATION_INFO:I = 0xbbc

.field private static final IGNORE_SETTING_ALLOWLIST:Ljava/lang/String; = "ignore_settings_allowlist"

.field private static final KEY_LOCATION_CACHE:Ljava/lang/String; = "key_ocation_cache"

.field private static final KEY_LOCATION_CACHE_ACCOUNTID:Ljava/lang/String; = "key_accountid"

.field private static final KEY_LOCATION_CACHE_ACCURACY:Ljava/lang/String; = "key_accuracy"

.field private static final KEY_LOCATION_CACHE_BROADCASTFLAG:Ljava/lang/String; = "key_broadcastflag"

.field private static final KEY_LOCATION_CACHE_CITY:Ljava/lang/String; = "key_city"

.field private static final KEY_LOCATION_CACHE_COUNTRYCODE:Ljava/lang/String; = "key_countrycode"

.field private static final KEY_LOCATION_CACHE_LATITUDE:Ljava/lang/String; = "key_latitude"

.field private static final KEY_LOCATION_CACHE_LONGTITUDE:Ljava/lang/String; = "key_longitude"

.field private static final KEY_LOCATION_CACHE_METHOD:Ljava/lang/String; = "key_method"

.field private static final KEY_LOCATION_CACHE_STATE:Ljava/lang/String; = "key_state"

.field private static final KEY_LOCATION_CACHE_ZIP:Ljava/lang/String; = "key_zip"

.field private static final LOCATION_PERMISSION_NAME:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static MAX_NETWORK_LOCATION_RETRY:I = 0x0

.field private static MAX_NUM_OF_GET_LOCATION_TASKS_THREAD:I = 0x0

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final MAX_VALID_PARAM_COUNT:I = 0x7

.field private static final MAX_VALID_SIM_COUNT:I = 0x4

.field private static final MSG_REG_IMSA_REQUEST_GEO_LOCATION_INFO:I = 0x17709

.field private static final MSG_REG_IMSA_RESPONSE_GETO_LOCATION_INFO:I = 0x16396

.field public static final MTK_KEY_WFC_GET_CONFIDENCE_LEVEL:Ljava/lang/String; = "mtk_carrier_wfc_get_confidence_level"

.field public static final MTK_KEY_WFC_GET_LOCATION_ALWAYS:Ljava/lang/String; = "mtk_carrier_wfc_get_location_always"

.field public static final MTK_KEY_WFC_LOCATION_RESPONSE_TIMEOUT:Ljava/lang/String; = "mtk_carrier_wfc_location_response_timeout"

.field private static final NA_CONFIDENCE_LEVEL:I = 0x5a

.field private static NETWORK_LOCATION_UPDATE_TIME:I = 0x0

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I = 0x0

.field private static final REQUEST_LOCATION_MODE_CHANGED_RETRY_TIMEOUT:I = 0x3e8

.field private static final REQUEST_LOCATION_RETRY_TIMEOUT:I = 0x1388

.field private static final REQUEST_NETWORK_LOCATION_RETRY_TIMEOUT:I = 0xbb8

.field private static final RESPONSE_SET_LOCATION_ENABLED:I = 0xc1d

.field private static final RESPONSE_SET_LOCATION_INFO:I = 0xc1c

.field private static final STANDARD_NORMAL_DISTRIBUTION_TABLE:[F

.field private static final TAG:Ljava/lang/String; = "ImsLocationHandler"

.field private static final TELDBG:Z

.field private static final USR_BUILD:Z


# instance fields
.field private mCallStateListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;

.field private mConfidenceLevel:I

.field private mConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mGeoCoder:Landroid/location/Geocoder;

.field private mGnssProxyPackageName:Ljava/lang/String;

.field private mIgnoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreLocaitonSetting:Z

.field private mLastLocationSetting:Z

.field private mLocationInfoQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequestLock:Ljava/lang/Object;

.field private mLocationRequestRegistered:Z

.field private mLocationSetting:Z

.field private mLocationTimeout:Z

.field private mLocationTimeoutLock:Ljava/lang/Object;

.field private mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

.field private mNetworkAvailable:Z

.field private mNetworkLocationRetry:I

.field private mNetworkLocationTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingLocationRequest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPlmnCountryCode:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryCount:I

.field private mSimCount:I

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiMacAddr:Ljava/lang/String;

.field private mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIgnoreList(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIgnoreLocaitonSetting(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreLocaitonSetting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationInfoQueue(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationManager(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationRequestRegistered(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationSetting(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationTimeout(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationTimeoutLock(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkAvailable(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumber(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiPdnHandler(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLocationTimeout(Lcom/mediatek/wfo/impl/ImsLocationHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkAvailable(Lcom/mediatek/wfo/impl/ImsLocationHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddRetryLocationRequestForECC(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->addRetryLocationRequestForECC()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelNetworkLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->cancelNetworkLocationRequest()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetGeoLocationFromLatLong(Lcom/mediatek/wfo/impl/ImsLocationHandler;Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getGeoLocationFromLatLong(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misCtaNotAllow(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isCtaNotAllow()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEccInProgress(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isEccInProgress()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaskString(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateLocationForNoSimEcc(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->updateLocationForNoSimEcc()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 112
    const/16 v0, 0x20

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->STANDARD_NORMAL_DISTRIBUTION_TABLE:[F

    .line 122
    const/4 v0, 0x3

    sput v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_NUM_OF_GET_LOCATION_TASKS_THREAD:I

    .line 123
    const v0, 0xd6d8

    sput v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I

    .line 124
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->ENGLOAD:Z

    .line 126
    const/16 v0, 0xf

    sput v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    .line 148
    const/16 v0, 0x3e8

    sput v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->NETWORK_LOCATION_UPDATE_TIME:I

    .line 198
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 199
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
    sput-boolean v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->USR_BUILD:Z

    .line 200
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/mediatek/wfo/impl/ImsLocationHandler;->TELDBG:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f0a3055    # 0.5398f
        0x3f144d01    # 0.5793f
        0x3f1e2eb2    # 0.6179f
        0x3f27c84b    # 0.6554f
        0x3f310625    # 0.6915f
        0x3f39c77a    # 0.7257f
        0x3f420c4a    # 0.758f
        0x3f49c0ec    # 0.7881f
        0x3f50ded3    # 0.8159f
        0x3f575f70    # 0.8413f
        0x3f5d42c4    # 0.8643f
        0x3f6288ce    # 0.8849f
        0x3f67381d    # 0.9032f
        0x3f6b50b1    # 0.9192f
        0x3f6ee632    # 0.9332f
        0x3f71f8a1    # 0.9452f
        0x3f749518    # 0.9554f
        0x3f76cf42    # 0.9641f
        0x3f78a71e    # 0.9713f
        0x3f7a29c7    # 0.9772f
        0x3f7b6ae8    # 0.9821f
        0x3f7c710d    # 0.9861f
        0x3f7d42c4    # 0.9893f
        0x3f7de69b    # 0.9918f
        0x3f7e69ad    # 0.9938f
        0x3f7ecbfb    # 0.9953f
        0x3f7f1aa0    # 0.9965f
        0x3f7f559b    # 0.9974f
        0x3f7f837b    # 0.9981f
        0x3f7faace    # 0.9987f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 649
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 162
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mCallStateListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp-IA;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    .line 173
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiMacAddr:Ljava/lang/String;

    .line 180
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 185
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    .line 187
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeout:Z

    .line 188
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    .line 190
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    .line 192
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLastLocationSetting:Z

    .line 194
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreLocaitonSetting:Z

    .line 235
    const-string v1, "186119"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreList:Ljava/util/List;

    .line 240
    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfidenceLevel:I

    .line 244
    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    .line 246
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 247
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/mediatek/wfo/impl/ImsLocationHandler$1;

    invoke-direct {v8, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$1;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 1520
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 650
    iput-object p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 651
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiPdnHandler"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p3, "simCount"    # I
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 611
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mCallStateListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp-IA;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    .line 173
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiMacAddr:Ljava/lang/String;

    .line 180
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 185
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    .line 187
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeout:Z

    .line 188
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    .line 190
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    .line 192
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLastLocationSetting:Z

    .line 194
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreLocaitonSetting:Z

    .line 235
    const-string v1, "186119"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreList:Ljava/util/List;

    .line 240
    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfidenceLevel:I

    .line 244
    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    .line 246
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 247
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/mediatek/wfo/impl/ImsLocationHandler$1;

    invoke-direct {v8, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$1;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 1520
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 612
    iput-object p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 613
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    .line 614
    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    .line 616
    const-string v0, "replace mContext to mDeviceContext"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 618
    :cond_0
    iput-object p2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 619
    const/4 v0, 0x4

    if-gt p3, v0, :cond_1

    move v0, p3

    :cond_1
    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mSimCount:I

    .line 620
    iput-object p5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 622
    sget v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    .line 624
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGeoCoder:Landroid/location/Geocoder;

    .line 625
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 627
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 628
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mCallStateListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 630
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1st time send location setting to modem, mLocationSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationEnabled()V

    .line 635
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 636
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->loadProxyNameFromCarrierConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    .line 637
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 638
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 639
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 641
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->registerForBroadcast()V

    .line 642
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->registerIndication()V

    .line 643
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->registerDefaultNetwork()V

    .line 644
    return-void
.end method

.method private addPackageInLocationSettingsWhitelist()V
    .locals 7

    .line 1410
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1412
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "location"

    const-string v2, "ignore_settings_allowlist"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1414
    .local v4, "whitelist":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1415
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1416
    .local v3, "outStr":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add WFC in location setting whitelist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1418
    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1421
    .end local v3    # "outStr":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private addRetryLocationRequest(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 682
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 684
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 685
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x7

    new-array v4, v3, [Ljava/lang/String;

    .line 686
    .local v4, "retryRet":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 688
    .local v5, "delayRet":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v6, v2

    if-le v6, v3, :cond_0

    goto :goto_1

    .line 693
    :cond_0
    array-length v3, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    array-length v3, v2

    invoke-static {v2, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 695
    new-instance v3, Landroid/os/AsyncResult;

    const/4 v7, 0x0

    invoke-direct {v3, v7, v4, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 696
    .local v3, "retryAr":Landroid/os/AsyncResult;
    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v7, v5, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v7, v8

    .line 698
    .local v7, "delayAr":Landroid/os/AsyncResult;
    const/16 v8, 0xbbf

    invoke-virtual {p0, v8, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 699
    .local v9, "retryMsg":Landroid/os/Message;
    iget-object v10, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 701
    iget-object v6, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 704
    :cond_1
    iget-object v10, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v10, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 706
    :goto_0
    const-string v6, "ImsLocationHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Added, current PendingLocationRequest size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 707
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 706
    invoke-static {v6, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {p0, v8, v7}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 709
    .local v6, "delayMsg":Landroid/os/Message;
    const-wide/16 v10, 0x1388

    invoke-virtual {p0, v6, v10, v11}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 710
    nop

    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":[Ljava/lang/String;
    .end local v3    # "retryAr":Landroid/os/AsyncResult;
    .end local v4    # "retryRet":[Ljava/lang/String;
    .end local v5    # "delayRet":[Ljava/lang/String;
    .end local v6    # "delayMsg":Landroid/os/Message;
    .end local v7    # "delayAr":Landroid/os/AsyncResult;
    .end local v9    # "retryMsg":Landroid/os/Message;
    monitor-exit v0

    .line 711
    return-void

    .line 689
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    .restart local v2    # "result":[Ljava/lang/String;
    .restart local v4    # "retryRet":[Ljava/lang/String;
    .restart local v5    # "delayRet":[Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v3, "ImsLocationHandler"

    const-string v6, "addRetryLocationRequest: params invalid"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    monitor-exit v0

    return-void

    .line 710
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":[Ljava/lang/String;
    .end local v4    # "retryRet":[Ljava/lang/String;
    .end local v5    # "delayRet":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addRetryLocationRequestForECC()V
    .locals 6

    .line 714
    const-string v0, "0"

    const-string v1, "0"

    const-string v2, "0"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "retryRet":[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 717
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 718
    .local v1, "retryAr":Landroid/os/AsyncResult;
    const/16 v2, 0xbbf

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 720
    .local v2, "retryMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 722
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 725
    :cond_0
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 727
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added for ECC, current PendingLocationRequest size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 728
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 727
    const-string v4, "ImsLocationHandler"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void
.end method

.method private adjustAccuracyForConfidence(FFF)F
    .locals 2
    .param p1, "srcAccuracy"    # F
    .param p2, "srcConf"    # F
    .param p3, "destConf"    # F

    .line 1073
    invoke-direct {p0, p3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSigmaFromConf(F)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSigmaFromConf(F)F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private cancelNetworkLocationRequest()V
    .locals 4

    .line 1394
    const/16 v0, 0xbc4

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1395
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->removeMessages(I)V

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "ImsLocationHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1398
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    .line 1399
    const-string v0, "cancelNetworkLocationRequest: empty locationManager, return"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    return-void

    .line 1402
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1403
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    .line 1406
    const-string v0, "cancelNetworkLocationRequest"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    return-void
.end method

.method private checkLocationProxyAppPermission()Z
    .locals 5

    .line 1694
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->loadProxyNameFromCarrierConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    .line 1696
    const/4 v1, 0x1

    const-string v2, "ImsLocationHandler"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1697
    const-string v0, "The package name is empty, treat it as granted"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    return v1

    .line 1701
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1703
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    iget-object v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1704
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 1705
    .local v0, "proxyAppLocationGranted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxyAppLocationGranted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    return v0

    .line 1709
    .end local v0    # "proxyAppLocationGranted":Z
    :cond_2
    const-string v0, "non-FWK permission app not installed, treat it as granted"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    return v1
.end method

.method private dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 839
    iget-wide v0, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 840
    .local v0, "latitude":D
    iget-wide v2, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 841
    .local v2, "longitude":D
    iget v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 843
    .local v4, "accuracy":F
    const-wide/16 v5, 0x0

    cmpl-double v7, v0, v5

    if-nez v7, :cond_0

    cmpl-double v5, v2, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    .line 844
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->proccessLocationFromNetwork(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    goto :goto_0

    .line 846
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->cancelNetworkLocationRequest()V

    .line 847
    iget-object v5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    monitor-enter v5

    .line 848
    const/4 v6, 0x0

    :try_start_0
    iput-boolean v6, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeout:Z

    .line 849
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    const-string v5, "removeMessages: EVENT_GET_LAST_KNOWN_LOCATION"

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 851
    const/16 v5, 0xbb9

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->removeMessages(I)V

    .line 852
    const-string v5, "GPS"

    iput-object v5, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 853
    iget-object v5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->pollLocationInfo()V

    .line 856
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchLocationRequest(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 857
    return-void

    .line 849
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private getGeoLocationFromLatLong(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .locals 12
    .param p1, "location"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1136
    const-string v0, "ImsLocationHandler"

    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGeoCoder:Landroid/location/Geocoder;

    if-nez v1, :cond_0

    .line 1137
    const-string v0, "getGeoLocationFromLatLong: empty geoCoder, return an empty location"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1138
    return-object p1

    .line 1141
    :cond_0
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1142
    const-string v0, "getGeoLocationFromLatLong: this system has no GeoCoder implementation!!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1143
    return-object p1

    .line 1146
    :cond_1
    iget-wide v7, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 1147
    .local v7, "lat":D
    iget-wide v9, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 1149
    .local v9, "lng":D
    const/4 v11, 0x0

    .line 1151
    .local v11, "lstAddress":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGeoCoder:Landroid/location/Geocoder;

    const/4 v6, 0x1

    move-wide v2, v7

    move-wide v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v1

    .line 1156
    :goto_0
    goto :goto_1

    .line 1154
    :catch_0
    move-exception v1

    .line 1155
    .local v1, "e2":Ljava/lang/IllegalArgumentException;
    const-string v2, "mGeoCoder.getFromLocation throw IllegalArgumentException"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1152
    .end local v1    # "e2":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1153
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGeoCoder.getFromLocation throw IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1158
    :goto_1
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 1172
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 1173
    iget-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1174
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 1176
    :cond_3
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 1177
    iget-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1178
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 1180
    :cond_4
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    .line 1181
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1183
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1184
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->saveLocationCache(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 1187
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGeoLocationFromLatLong: location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1189
    return-object p1

    .line 1159
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGeoLocationFromLatLong: get empty address, time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1162
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLocationCache(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1163
    const-string v0, ""

    iget-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1164
    const/4 v0, 0x0

    return-object v0

    .line 1166
    :cond_7
    return-object p1

    .line 1168
    :cond_8
    return-object p1
.end method

.method private getIntCarrierConfig(Ljava/lang/String;II)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "simIdx"    # I

    .line 987
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 988
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 989
    const-string v1, "ImsLocationHandler"

    if-nez v0, :cond_0

    .line 990
    const-string v0, "getIntCarrierConfig: Carrier Config service is NOT ready"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    return p2

    .line 994
    :cond_0
    invoke-direct {p0, p3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSubIdBySlot(I)I

    move-result v0

    .line 995
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 996
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 997
    .local v2, "configs":Landroid/os/PersistableBundle;
    :goto_0
    if-nez v2, :cond_2

    .line 998
    const-string v3, "getIntCarrierConfig: SIM not ready, use default carrier config"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1002
    :cond_2
    invoke-virtual {v2, p1, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1003
    .local v1, "ret":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntCarrierConfig sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1004
    return v1
.end method

.method private getIntCarrierConfigEx(Ljava/lang/String;II)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "simIdx"    # I

    .line 1009
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 1010
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1011
    const-string v1, "ImsLocationHandler"

    if-nez v0, :cond_0

    .line 1012
    const-string v0, "getIntCarrierConfigEx: Carrier Config service is NOT ready"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return p2

    .line 1016
    :cond_0
    move v0, p2

    .line 1017
    .local v0, "ret":I
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v2

    .line 1018
    .local v2, "simState":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 1019
    invoke-direct {p0, p3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSubIdBySlot(I)I

    move-result v3

    .line 1020
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1021
    iget-object v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v4, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1022
    .local v4, "configs":Landroid/os/PersistableBundle;
    :goto_0
    if-nez v4, :cond_2

    .line 1023
    const-string v5, "getIntCarrierConfigEx: SIM not ready, use default carrier config"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 1026
    :cond_2
    invoke-virtual {v4, p1, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1029
    .end local v3    # "subId":I
    .end local v4    # "configs":Landroid/os/PersistableBundle;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntCarrierConfigEx simIdx: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ret: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " simState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1031
    return v0
.end method

.method private getLastKnownLocation(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Z
    .locals 12
    .param p1, "info"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1270
    const-string v0, "getLastKnownLocation"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1273
    const-string v0, "getLastKnownLocation: empty locationManager, return"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1274
    return v1

    .line 1277
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isCtaNotAllow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    const-string v0, "ImsLocationHandler"

    const-string v2, "getLastKnownLocation: CTA not allow"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    return v1

    .line 1283
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1284
    const-string v0, "getLastKnownLocation: GPS_PROVIDER doesn\'t exist or not ready"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1285
    return v1

    .line 1288
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isEccInProgress()Z

    move-result v0

    .line 1291
    .local v0, "isEcc":Z
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    new-instance v4, Landroid/location/LastLocationRequest$Builder;

    invoke-direct {v4}, Landroid/location/LastLocationRequest$Builder;-><init>()V

    .line 1293
    invoke-virtual {v4, v0}, Landroid/location/LastLocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LastLocationRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    move-result-object v4

    .line 1292
    invoke-virtual {v3, v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;)Landroid/location/Location;

    move-result-object v2

    .line 1295
    .local v2, "gpsLocation":Landroid/location/Location;
    const/4 v3, 0x1

    const/16 v4, 0xbbb

    const-wide/32 v5, 0x1b7740

    if-eqz v2, :cond_3

    .line 1297
    const-string v7, "GPS location"

    invoke-virtual {p0, v7}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v7, v7, v5

    if-gez v7, :cond_3

    .line 1299
    invoke-virtual {p0, v4, v1, v1, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1301
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1302
    return v3

    .line 1307
    :cond_3
    iget-object v7, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v8, "network"

    invoke-virtual {v7, v8}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1308
    const-string v3, "getLastKnownLocation: NETWORK_PROVIDER doesn\'t exist or not ready"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1309
    return v1

    .line 1314
    :cond_4
    iget-object v7, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    new-instance v9, Landroid/location/LastLocationRequest$Builder;

    invoke-direct {v9}, Landroid/location/LastLocationRequest$Builder;-><init>()V

    .line 1316
    invoke-virtual {v9, v0}, Landroid/location/LastLocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LastLocationRequest$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    move-result-object v9

    .line 1315
    invoke-virtual {v7, v8, v9}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;)Landroid/location/Location;

    move-result-object v7

    .line 1318
    .local v7, "networkLocation":Landroid/location/Location;
    if-eqz v7, :cond_5

    .line 1320
    const-string v8, "Network location"

    invoke-virtual {p0, v8}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v5, v8, v5

    if-gez v5, :cond_5

    .line 1322
    invoke-virtual {p0, v4, v1, v1, v7}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1324
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1325
    return v3

    .line 1329
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastKnownLocation: no last known location, mLocationSetting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPlmnCountryCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1333
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1334
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 1336
    :cond_6
    return v1
.end method

.method private getLocationCache(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .locals 5
    .param p1, "location"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1245
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1247
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "key_accountid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    .line 1249
    iget v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    if-nez v1, :cond_0

    .line 1250
    const-string v1, "key_broadcastflag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 1253
    :cond_0
    const-string v1, "key_latitude"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v3, v1

    iput-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 1255
    const-string v1, "key_longitude"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v3, v1

    iput-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 1257
    const-string v1, "key_accuracy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 1259
    const-string v1, "key_method"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 1260
    const-string v1, "key_city"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 1261
    const-string v1, "key_state"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 1262
    const-string v1, "key_zip"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    .line 1263
    const-string v1, "key_countrycode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get geolocation from cache, location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsLocationHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return-object p1
.end method

.method private getLocationCacheEnable()Z
    .locals 4

    .line 1211
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1212
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "key_ocation_cache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1213
    .local v1, "locationCacheEnable":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get location cache enable status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1214
    return v1
.end method

.method private getMainCapabilityPhoneId()I
    .locals 3

    .line 1493
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 1494
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1495
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

    const-string v2, "ImsLocationHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const/4 v0, -0x1

    .line 1498
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCapabilityPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1499
    return v0
.end method

.method private getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 3

    .line 1503
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1505
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1507
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1

    .line 1509
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getMwiRil(I)Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 1
    .param p1, "phoneId"    # I

    .line 1514
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1515
    :cond_0
    const/4 p1, 0x0

    .line 1517
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getSigmaFromConf(F)F
    .locals 12
    .param p1, "conf"    # F

    .line 1035
    const/4 v0, 0x0

    .line 1038
    .local v0, "index":I
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 1040
    const/high16 v1, 0x40c00000    # 6.0f

    return v1

    .line 1043
    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v2, :cond_1

    .line 1045
    return v3

    .line 1048
    :cond_1
    const/high16 v2, 0x42860000    # 67.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    .line 1049
    return v3

    .line 1050
    :cond_2
    const/high16 v2, 0x42880000    # 68.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    .line 1051
    return v3

    .line 1052
    :cond_3
    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_4

    .line 1053
    const v1, 0x3fd33333    # 1.65f

    return v1

    .line 1054
    :cond_4
    const/high16 v2, 0x42be0000    # 95.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_5

    .line 1055
    const v1, 0x3ffae148    # 1.96f

    return v1

    .line 1057
    :cond_5
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    float-to-double v4, p1

    add-double/2addr v4, v2

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    div-double/2addr v4, v2

    double-to-float v2, v4

    .line 1058
    .local v2, "distribution":F
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/mediatek/wfo/impl/ImsLocationHandler;->STANDARD_NORMAL_DISTRIBUTION_TABLE:[F

    array-length v4, v3

    if-ge v0, v4, :cond_8

    .line 1059
    aget v4, v3, v0

    cmpl-float v5, v4, v2

    const-wide v6, 0x3fb999999999999aL    # 0.1

    if-nez v5, :cond_6

    .line 1060
    int-to-double v3, v0

    mul-double/2addr v3, v6

    double-to-float v1, v3

    return v1

    .line 1062
    :cond_6
    const/4 v5, 0x1

    if-lt v0, v5, :cond_7

    cmpl-float v5, v4, v2

    if-lez v5, :cond_7

    .line 1063
    add-int/lit8 v1, v0, -0x1

    int-to-double v8, v1

    mul-double/2addr v8, v6

    add-int/lit8 v1, v0, -0x1

    aget v1, v3, v1

    sub-float v1, v2, v1

    float-to-double v10, v1

    mul-double/2addr v10, v6

    add-int/lit8 v1, v0, -0x1

    aget v1, v3, v1

    sub-float/2addr v4, v1

    float-to-double v3, v4

    div-double/2addr v10, v3

    add-double/2addr v8, v10

    double-to-float v1, v8

    .line 1065
    .local v1, "RetVal":F
    return v1

    .line 1058
    .end local v1    # "RetVal":F
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1069
    :cond_8
    return v1
.end method

.method private getSimCountryCode()Ljava/lang/String;
    .locals 3

    .line 1193
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, "simCountryCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimCountryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1196
    return-object v0
.end method

.method private getSubIdBySlot(I)I
    .locals 2
    .param p1, "slot"    # I

    .line 982
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 983
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    :goto_0
    return v1
.end method

.method private handleAllRetryLocationRequest()V
    .locals 4

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAllRetryLocationRequest mPendingLocationRequest.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    const/16 v1, 0xbbf

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->removeMessages(I)V

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 749
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 752
    :cond_1
    const-string v3, "Network not available, ignore EVENT_RETRY_GET_LOCATION_REQUEST."

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 750
    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleLocationRequest(Landroid/os/Message;)V

    .line 754
    .end local v2    # "msg":Landroid/os/Message;
    :goto_2
    goto :goto_0

    .line 755
    :cond_3
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 756
    monitor-exit v0

    .line 757
    return-void

    .line 756
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleLocationRequest(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 780
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    iget-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "ImsLocationHandler"

    if-nez v0, :cond_0

    .line 781
    const-string v0, "handleLocationInfo(): msg.obj is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return-void

    .line 784
    :cond_0
    iget-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/os/AsyncResult;

    .line 785
    .local v14, "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, [Ljava/lang/String;

    .line 786
    .local v15, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 788
    .local v2, "confidence":I
    if-nez v15, :cond_1

    .line 789
    const-string v0, "handleLocationInfo(): result is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-void

    .line 793
    :cond_1
    array-length v0, v15

    const/4 v3, 0x7

    if-ge v0, v3, :cond_2

    .line 794
    const-string v0, "handleLocationInfo(): params invalid"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return-void

    .line 799
    :cond_2
    const/16 v16, 0x6

    const/16 v17, 0x1

    const/16 v18, 0x0

    :try_start_0
    aget-object v0, v15, v18

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 800
    .local v4, "accId":I
    aget-object v0, v15, v17

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 801
    .local v5, "broadcastFlag":I
    const/4 v0, 0x2

    aget-object v0, v15, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 802
    .local v6, "latitude":D
    const/4 v0, 0x3

    aget-object v0, v15, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 803
    .local v8, "longitude":D
    const/4 v0, 0x4

    aget-object v0, v15, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 804
    .local v10, "accuracy":F
    const/4 v0, 0x5

    aget-object v1, v15, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 805
    aget-object v0, v15, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v2, v0

    move v11, v2

    goto :goto_0

    .line 804
    :cond_3
    move v11, v2

    .line 807
    .end local v2    # "confidence":I
    .local v11, "confidence":I
    :goto_0
    :try_start_1
    aget-object v0, v15, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 810
    .local v3, "simIdx":I
    if-eqz v11, :cond_4

    .line 811
    :try_start_2
    iput v11, v12, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfidenceLevel:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 820
    .end local v3    # "simIdx":I
    .end local v4    # "accId":I
    .end local v5    # "broadcastFlag":I
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v10    # "accuracy":F
    :catch_0
    move-exception v0

    move v2, v11

    goto :goto_2

    .line 814
    .restart local v3    # "simIdx":I
    .restart local v4    # "accId":I
    .restart local v5    # "broadcastFlag":I
    .restart local v6    # "latitude":D
    .restart local v8    # "longitude":D
    .restart local v10    # "accuracy":F
    :cond_4
    :goto_1
    :try_start_3
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v19, v11

    .end local v11    # "confidence":I
    .local v19, "confidence":I
    :try_start_4
    invoke-direct/range {v1 .. v11}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDFI)V

    .line 817
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->updateCountryCodeForVoWifiOnly()V

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLocationRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 819
    invoke-direct {v12, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 824
    .end local v0    # "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .end local v3    # "simIdx":I
    .end local v4    # "accId":I
    .end local v5    # "broadcastFlag":I
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v10    # "accuracy":F
    move/from16 v11, v19

    goto :goto_3

    .line 820
    :catch_1
    move-exception v0

    move/from16 v2, v19

    goto :goto_2

    .end local v19    # "confidence":I
    .restart local v11    # "confidence":I
    :catch_2
    move-exception v0

    move/from16 v19, v11

    move/from16 v2, v19

    .end local v11    # "confidence":I
    .restart local v19    # "confidence":I
    goto :goto_2

    .end local v19    # "confidence":I
    .restart local v2    # "confidence":I
    :catch_3
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLocationRequest(), ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v15

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], accId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v15, v18

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", broadcastFlag:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v15, v17

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", confidence:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", simIdx:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v15, v16

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    move v11, v2

    .line 826
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "confidence":I
    .restart local v11    # "confidence":I
    :goto_3
    return-void
.end method

.method private handleNetworkLocationUpdate(Landroid/location/Location;)V
    .locals 23
    .param p1, "location"    # Landroid/location/Location;

    .line 888
    move-object/from16 v10, p0

    if-nez p1, :cond_0

    .line 889
    const-string v0, "network location get null, unexpected result"

    invoke-virtual {v10, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 890
    return-void

    .line 893
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    .line 894
    .local v11, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    .line 895
    .local v13, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    .line 896
    .local v7, "altitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 897
    .local v15, "accuracy":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v9

    .line 898
    .local v9, "verticalAccuracy":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    .line 899
    .local v5, "time":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update all LocationInfo with  time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accuracy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " verticalAccuracy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 906
    new-instance v16, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide/from16 v17, v5

    .end local v5    # "time":J
    .local v17, "time":J
    move-wide v5, v11

    move-wide/from16 v19, v7

    .end local v7    # "altitude":D
    .local v19, "altitude":D
    move-wide v7, v13

    move-wide/from16 v21, v11

    move v11, v9

    .end local v9    # "verticalAccuracy":F
    .local v11, "verticalAccuracy":F
    .local v21, "latitude":D
    move v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 907
    .local v0, "locationinfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    move-wide/from16 v1, v19

    .end local v19    # "altitude":D
    .local v1, "altitude":D
    iput-wide v1, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAltitude:D

    .line 908
    iput v11, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 909
    move-wide/from16 v3, v17

    .end local v17    # "time":J
    .local v3, "time":J
    iput-wide v3, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    .line 910
    invoke-direct {v10, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->updateLocationInfoQueue(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 912
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->pollLocationInfo()V

    .line 913
    iget-object v5, v10, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 914
    return-void
.end method

.method private handleResponseSetLocationEnabled(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 540
    const-string v0, "ImsLocationHandler"

    if-nez p1, :cond_0

    .line 541
    const-string v1, "ResponseSetLocationEnabled no ar"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void

    .line 545
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResponseSetLocationEnabled exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mRetryCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 549
    const/16 v0, 0xbc1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 551
    iget v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    goto :goto_0

    .line 553
    :cond_1
    iput v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    goto :goto_0

    .line 557
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLastLocationSetting:Z

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponseSetLocationEnabled mLastLocationSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLastLocationSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 560
    iput v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    .line 562
    :goto_0
    return-void
.end method

.method private handleRetryLocationRequest(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 732
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current PendingLocationRequest size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    const-string v1, "Network not available, ignore EVENT_RETRY_GET_LOCATION_REQUEST."

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 735
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleLocationRequest(Landroid/os/Message;)V

    .line 739
    :goto_1
    monitor-exit v0

    .line 740
    return-void

    .line 739
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCtaNotAllow()Z
    .locals 7

    .line 1626
    const/4 v0, 0x0

    .line 1629
    .local v0, "isCtaNotAllow":Z
    const-string v1, "ro.vendor.mtk_cta_set"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1631
    .local v1, "isCtaSet":Z
    :goto_0
    const-string v4, "ro.vendor.mtk_mobile_management"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 1633
    .local v2, "isCtaSecurity":Z
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 1634
    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 1635
    .local v3, "isNlpEnabled":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCtaNotAllow: isCtaSet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCtaSecurity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isNlpEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1645
    nop

    .line 1646
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getMainCapabilityPhoneId()I

    move-result v4

    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1647
    .local v4, "mccMnc":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eq v4, v6, :cond_2

    const-string v5, "460"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1648
    :cond_2
    const/4 v0, 0x1

    .line 1649
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCtaNotAllow: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ImsLocationHandler"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_3
    return v0
.end method

.method private isEccInProgress()Z
    .locals 3

    .line 1585
    const/4 v0, 0x0

    .line 1586
    .local v0, "isInEcc":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_0

    .line 1587
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v0

    .line 1589
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEccInProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsLocationHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    return v0
.end method

.method private isGetLocationAlways()Z
    .locals 6

    .line 1599
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 1600
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1601
    const-string v1, "ImsLocationHandler"

    if-nez v0, :cond_0

    .line 1602
    const-string v0, "isGetLocationAlways: Carrier Config service is NOT ready"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const/4 v0, 0x0

    return v0

    .line 1606
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 1607
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1608
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1609
    .local v2, "configs":Landroid/os/PersistableBundle;
    :goto_0
    if-nez v2, :cond_2

    .line 1610
    const-string v3, "isGetLocationAlways: SIM not ready, use default carrier config"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1614
    :cond_2
    nop

    .line 1615
    const-string v3, "mtk_carrier_wfc_get_location_always"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1616
    .local v3, "getLocationAlways":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGetLocationAlways: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    return v3
.end method

.method private isPackageInLocationSettingsWhitelist()Z
    .locals 5

    .line 1450
    const/4 v0, 0x0

    .line 1451
    .local v0, "result":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1453
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v2

    .line 1454
    .local v2, "whitelist":Landroid/os/PackageTagsList;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1455
    const/4 v0, 0x1

    .line 1458
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location setting whitelist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isLocationEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1460
    return v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .line 1685
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1686
    const/4 v0, 0x1

    return v0

    .line 1687
    :catch_0
    move-exception v1

    .line 1688
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non-FWK permission apk not found, treat it as granted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    return v0
.end method

.method private isSimAbsentForAllSlot()Z
    .locals 5

    .line 1730
    const/4 v0, 0x1

    .line 1731
    .local v0, "simCnt":I
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 1732
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 1734
    :cond_0
    const/4 v1, 0x1

    .line 1735
    .local v1, "isAllAbsent":Z
    const/4 v2, 0x0

    .local v2, "slotId":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1736
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v3

    .line 1737
    .local v3, "state":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1738
    const/4 v1, 0x0

    .line 1739
    goto :goto_1

    .line 1735
    .end local v3    # "state":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1742
    .end local v2    # "slotId":I
    :cond_2
    :goto_1
    return v1
.end method

.method private loadProxyNameFromCarrierConfig()Ljava/lang/String;
    .locals 6

    .line 1656
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 1657
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1658
    const-string v1, ""

    if-nez v0, :cond_0

    .line 1659
    const-string v0, "loadProxyNameFromCarrierConfig: Carrier Config service is NOT ready"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1660
    return-object v1

    .line 1663
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 1664
    .local v0, "ddSubId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1665
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1666
    .local v2, "configs":Landroid/os/PersistableBundle;
    :goto_0
    if-nez v2, :cond_2

    .line 1667
    const-string v3, "SIM not ready, use default carrier config"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1668
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1671
    :cond_2
    const-string v3, "gps.nfw_proxy_apps"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1672
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gps.nfw_proxy_apps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1673
    if-eqz v3, :cond_3

    .line 1674
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1676
    .local v1, "strings":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    return-object v4

    .line 1678
    .end local v1    # "strings":[Ljava/lang/String;
    :cond_3
    const-string v4, "Cannot get location proxy APP package name"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1679
    return-object v1
.end method

.method private maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1747
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1748
    return-object p1

    .line 1750
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1751
    .local v1, "maskLength":I
    const-string v2, "*"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 1752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1755
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1756
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1758
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
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 565
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 600
    const-string v0, "UNKNOWN"

    return-object v0

    .line 584
    :sswitch_0
    const-string v0, "RESPONSE_SET_LOCATION_ENABLED"

    return-object v0

    .line 582
    :sswitch_1
    const-string v0, "RESPONSE_SET_LOCATION_INFO"

    return-object v0

    .line 594
    :sswitch_2
    const-string v0, "EVENT_LOCATION_PROVIDERS_CHANGED"

    return-object v0

    .line 598
    :sswitch_3
    const-string v0, "EVENT_RETRY_NETWORK_LOCATION_REQUEST"

    return-object v0

    .line 596
    :sswitch_4
    const-string v0, "EVENT_LOCATION_CACHE"

    return-object v0

    .line 586
    :sswitch_5
    const-string v0, "EVENT_REQUEST_NETWORK_LOCATION"

    return-object v0

    .line 592
    :sswitch_6
    const-string v0, "EVENT_LOCATION_MODE_CHANGED"

    return-object v0

    .line 590
    :sswitch_7
    const-string v0, "EVENT_ALL_RETRY_GET_LOCATION_REQUST"

    return-object v0

    .line 588
    :sswitch_8
    const-string v0, "EVENT_RETRY_GET_LOCATION_REQUEST"

    return-object v0

    .line 580
    :sswitch_9
    const-string v0, "EVENT_DIALING_E911"

    return-object v0

    .line 574
    :sswitch_a
    const-string v0, "EVENT_SET_COUNTRY_CODE"

    return-object v0

    .line 572
    :sswitch_b
    const-string v0, "EVENT_SET_LOCATION_INFO"

    return-object v0

    .line 578
    :sswitch_c
    const-string v0, "EVENT_HANDLE_LAST_KNOWN_LOCATION_RESPONSE"

    return-object v0

    .line 570
    :sswitch_d
    const-string v0, "EVENT_HANDLE_NETWORK_LOCATION_RESPONSE"

    return-object v0

    .line 576
    :sswitch_e
    const-string v0, "EVENT_GET_LAST_KNOWN_LOCATION"

    return-object v0

    .line 568
    :sswitch_f
    const-string v0, "EVENT_GET_LOCATION_REQUEST"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xbb8 -> :sswitch_f
        0xbb9 -> :sswitch_e
        0xbba -> :sswitch_d
        0xbbb -> :sswitch_c
        0xbbc -> :sswitch_b
        0xbbd -> :sswitch_a
        0xbbe -> :sswitch_9
        0xbbf -> :sswitch_8
        0xbc0 -> :sswitch_7
        0xbc1 -> :sswitch_6
        0xbc2 -> :sswitch_5
        0xbc3 -> :sswitch_4
        0xbc4 -> :sswitch_3
        0xbc5 -> :sswitch_2
        0xc1c -> :sswitch_1
        0xc1d -> :sswitch_0
    .end sparse-switch
.end method

.method private pollLocationInfo()V
    .locals 5

    .line 953
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "ImsLocationHandler"

    if-eqz v0, :cond_0

    .line 954
    const-string v0, "No GeoLocation task"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return-void

    .line 959
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 960
    .local v0, "LocationInfoQueueCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;>;"
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 963
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/mediatek/wfo/impl/ImsLocationHandler$3;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$3;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    goto :goto_0

    .line 976
    :catch_0
    move-exception v2

    .line 977
    .local v2, "e":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pollLocationInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    .end local v2    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private proccessLocationFromNetwork(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 917
    const-string v0, "Network"

    iput-object v0, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 918
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->requestLocationFromNetworkLocation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 920
    const-string v0, "requestLocationFromNetworkLocation failed"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 922
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 924
    const/16 v0, 0xbc4

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->removeMessages(I)V

    .line 926
    sget v2, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    .line 928
    :cond_0
    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    if-lez v2, :cond_1

    .line 929
    const-string v2, "requestLocationFromNetworkLocation retry."

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 930
    nop

    .line 931
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 930
    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 934
    :cond_1
    const-string v0, "requestLocationFromNetworkLocation retry fail, skip."

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 936
    sget v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    .line 939
    :cond_2
    :goto_0
    const/16 v0, 0xbb9

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 941
    sget v2, Lcom/mediatek/wfo/impl/ImsLocationHandler;->REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I

    .line 943
    .local v2, "timeout":I
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    if-eqz v3, :cond_3

    .line 944
    sget v3, Lcom/mediatek/wfo/impl/ImsLocationHandler;->REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I

    iget v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    const-string v5, "mtk_carrier_wfc_location_response_timeout"

    invoke-direct {p0, v5, v3, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getIntCarrierConfig(Ljava/lang/String;II)I

    move-result v2

    .line 947
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add delayed message: EVENT_GET_LAST_KNOWN_LOCATION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v3, v2

    invoke-virtual {p0, v0, v3, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 950
    .end local v2    # "timeout":I
    :cond_4
    return-void
.end method

.method private registerDefaultNetwork()V
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 762
    .local v0, "cm":Landroid/net/ConnectivityManager;
    new-instance v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$2;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$2;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 776
    return-void
.end method

.method private registerForBroadcast()V
    .locals 4

    .line 1567
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1569
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1570
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1571
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1572
    const-string v1, "com.mediatek.intent.action.LOCATION_HANDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1573
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 1574
    return-void
.end method

.method private registerIndication()V
    .locals 4

    .line 1578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 1579
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerRequestGeoLocation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1582
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private removePackageInLocationSettingsWhitelist()V
    .locals 10

    .line 1424
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "location"

    const-string v2, "ignore_settings_allowlist"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1428
    .local v4, "whitelist":Ljava/lang/String;
    const/4 v5, -0x1

    .line 1429
    .local v5, "index":I
    const-string v6, ""

    .line 1430
    .local v6, "outStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, -0x1

    if-nez v7, :cond_1

    .line 1431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1432
    if-eq v5, v8, :cond_0

    .line 1433
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1435
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1436
    if-eq v5, v8, :cond_1

    .line 1437
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1442
    :cond_1
    :goto_0
    if-eq v5, v8, :cond_2

    .line 1443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remove WFC in location setting whitelist:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1444
    const/4 v3, 0x0

    invoke-static {v1, v2, v6, v3}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1447
    :cond_2
    return-void
.end method

.method private requestLocationFromNetworkLocation()Z
    .locals 11

    .line 1340
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "ImsLocationHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1341
    const-string v0, "requestLocationFromNetworkLocation failed: empty locationManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return v2

    .line 1346
    :cond_0
    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1347
    const-string v0, "requestLocationFromNetworkLocation failed: NETWORK_PROVIDER not ready"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return v2

    .line 1352
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isCtaNotAllow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1353
    const-string v0, "requestLocationFromNetworkLocation failed: CTA not allow"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return v2

    .line 1357
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->checkLocationProxyAppPermission()Z

    move-result v0

    .line 1358
    .local v0, "isProxyAppPermissionGranted":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isEccInProgress()Z

    move-result v3

    .line 1359
    .local v3, "isEcc":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isGetLocationAlways()Z

    move-result v4

    .line 1360
    .local v4, "isGetLocAlways":Z
    const/4 v5, 0x1

    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v6, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v6, v5

    .line 1361
    .local v6, "mustGetLocation":Z
    :goto_1
    if-eqz v6, :cond_5

    .line 1363
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isPackageInLocationSettingsWhitelist()Z

    .line 1365
    :cond_5
    if-nez v6, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    .line 1387
    :cond_6
    const-string v5, "requestLocationFromNetworkLocation failed: is NOT in ECC & non-framework location proxy app is NOT granted"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    return v2

    .line 1366
    :cond_7
    :goto_2
    iget-boolean v7, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    if-nez v7, :cond_a

    .line 1367
    const-string v7, "network"

    .line 1368
    .local v7, "method":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 1369
    const-string v7, "fused"

    .line 1371
    :cond_8
    sget v8, Lcom/mediatek/wfo/impl/ImsLocationHandler;->NETWORK_LOCATION_UPDATE_TIME:I

    int-to-long v8, v8

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10, v2}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v2

    .line 1374
    .local v2, "request":Landroid/location/LocationRequest;
    invoke-virtual {v2, v5}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 1375
    if-eqz v3, :cond_9

    .line 1376
    const/16 v8, 0x64

    invoke-virtual {v2, v8}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 1378
    :cond_9
    invoke-virtual {v2, v6}, Landroid/location/LocationRequest;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;

    .line 1379
    iget-object v8, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    iget-object v9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

    .line 1380
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    .line 1379
    invoke-virtual {v8, v2, v9, v10}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1381
    iput-boolean v5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    .line 1382
    iput-boolean v6, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreLocaitonSetting:Z

    .line 1383
    const-string v8, "requestLocationFromNetworkLocation: success"

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    .end local v2    # "request":Landroid/location/LocationRequest;
    .end local v7    # "method":Ljava/lang/String;
    :cond_a
    return v5
.end method

.method private saveLocationCache(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    .locals 14
    .param p1, "location"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveLocationCache, location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsLocationHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1221
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1223
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "key_accountid"

    iget v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1224
    const-string v3, "key_broadcastflag"

    iget v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1226
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    double-to-float v3, v3

    const-string v4, "key_latitude"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1227
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    double-to-float v3, v3

    const-string v4, "key_longitude"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1228
    const-string v3, "key_accuracy"

    iget v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1230
    const-string v3, "key_method"

    iget-object v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1231
    const-string v3, "key_city"

    iget-object v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1232
    const-string v3, "key_state"

    iget-object v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1233
    const-string v3, "key_zip"

    iget-object v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1234
    const-string v3, "key_countrycode"

    iget-object v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1236
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1237
    const-string v3, "Failed to commit saveLocationCache"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_0
    new-instance v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v13}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 1241
    .local v1, "tmplocation":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLocationCache(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1242
    return-void
.end method

.method private setCountryCode(Ljava/lang/String;)V
    .locals 11
    .param p1, "iso"    # Ljava/lang/String;

    .line 1561
    new-instance v10, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 1562
    .local v0, "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    iput-object p1, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1563
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 1564
    return-void
.end method

.method private setLocationCacheEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 1200
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1201
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1203
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_ocation_cache"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set location cache enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1206
    const-string v2, "Failed to commit location cache"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_0
    return-void
.end method

.method private setLocationEnabled()V
    .locals 5

    .line 1477
    const/16 v0, 0xc1d

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1479
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationEnabled(): last location setting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLastLocationSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new location setting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1483
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_LOCATION_SETTING:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->ordinal()I

    move-result v2

    .line 1484
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    .line 1483
    :goto_0
    const-string v4, "locenable"

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWfcConfig(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 1485
    return-void
.end method

.method private setLocationInfo(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    .locals 25
    .param p1, "info"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1077
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1078
    const-string v2, "Unknown"

    iput-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 1081
    :cond_0
    iget-object v2, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 1082
    const-string v4, "HK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1083
    :cond_2
    iget-object v2, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 1084
    :cond_3
    iget-object v2, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1085
    invoke-static {v2}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 1087
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSimCountryCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 1088
    :cond_4
    iget-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 1090
    iget-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 1092
    :cond_5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocationInfo info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPlmnCountryCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mConfidence:I

    .line 1095
    .local v2, "destConf":I
    if-nez v2, :cond_7

    .line 1096
    iget v3, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfidenceLevel:I

    if-eqz v3, :cond_6

    .line 1097
    iget v2, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfidenceLevel:I

    goto :goto_1

    .line 1099
    :cond_6
    const/16 v3, 0x5a

    iget v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    const-string v5, "mtk_carrier_wfc_get_confidence_level"

    invoke-direct {v0, v5, v3, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getIntCarrierConfigEx(Ljava/lang/String;II)I

    move-result v2

    .line 1103
    :cond_7
    :goto_1
    iget v3, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    const/high16 v4, 0x42880000    # 68.0f

    int-to-float v5, v2

    invoke-direct {v0, v3, v4, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->adjustAccuracyForConfidence(FFF)F

    move-result v3

    .line 1104
    .local v3, "destAccuracy":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setGeoLocation new accuracy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new confidence:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1106
    iput v3, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 1108
    iget v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    iput v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 1109
    iget v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    iput v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 1111
    const/16 v4, 0xc1c

    invoke-virtual {v0, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .local v4, "result":Landroid/os/Message;
    move-object/from16 v22, v4

    .line 1112
    iget v5, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    invoke-direct {v0, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getMwiRil(I)Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    .line 1113
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 1114
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 1115
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 1116
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    iget v10, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 1117
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    iget-object v12, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    iget-object v13, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    iget-object v14, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    iget-object v15, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1123
    invoke-static {}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getUeWlanMacAddr()Ljava/lang/String;

    move-result-object v16

    .line 1124
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v2    # "destConf":I
    .end local v3    # "destAccuracy":F
    .local v23, "destConf":I
    .local v24, "destAccuracy":F
    iget-wide v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAltitude:D

    .line 1125
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v18

    iget v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 1126
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    iget v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 1127
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v20

    iget v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 1128
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    .line 1112
    invoke-virtual/range {v5 .. v22}, Lcom/mediatek/wfo/ril/MwiRIL;->setLocationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1130
    return-void
.end method

.method private updateCountryCodeForVoWifiOnly()V
    .locals 2

    .line 830
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 834
    :cond_1
    const-string v0, "ImsLocationHandler"

    const-string v1, "updateCountryCodeForVoWifiOnly"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/16 v0, 0xbbd

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSimCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 836
    return-void
.end method

.method private updateLocationForNoSimEcc()V
    .locals 12

    .line 1716
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isSimAbsentForAllSlot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1717
    return-void

    .line 1719
    :cond_0
    const-string v0, "ImsLocationHandler"

    const-string v1, "updateLocationForNoSimEcc"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1721
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getMainCapabilityPhoneId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 1722
    .local v0, "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    nop

    .line 1723
    const-string v1, "Network"

    iput-object v1, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 1725
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    const/16 v1, 0xbb9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1727
    return-void
.end method

.method private updateLocationInfoQueue(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    .locals 7
    .param p1, "location"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 861
    .local v0, "duplicatedInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;>;"
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 862
    .local v2, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    iput-wide v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 863
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    iput-wide v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 864
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAltitude:D

    iput-wide v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAltitude:D

    .line 865
    iget v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    iput v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 868
    iget v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    iput v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 869
    iget v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    iput v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 870
    iget v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    iput v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 871
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    iput-wide v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    .line 872
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 874
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 875
    .local v4, "gpsLocationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    iget v5, v4, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    iget v6, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    if-ne v5, v6, :cond_0

    iget v5, v4, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    iget v6, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    if-ne v5, v6, :cond_0

    .line 877
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    .end local v4    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    :cond_0
    goto :goto_1

    .line 880
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 881
    .restart local v4    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    iget-object v5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 882
    .end local v4    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    goto :goto_2

    .line 883
    :cond_2
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    .end local v2    # "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    goto :goto_0

    .line 885
    :cond_3
    return-void
.end method

.method private utGeoLocationRequest()V
    .locals 11

    .line 1464
    new-instance v10, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-wide v5, 0x406a800000000000L    # 212.0

    const-wide v7, 0x4062600000000000L    # 147.0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 1466
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 1467
    return-void
.end method

.method private utNetworkLocationRequest()V
    .locals 11

    .line 1470
    new-instance v10, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 1472
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 1473
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 605
    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 415
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 416
    iget v0, v12, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v13, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 494
    :sswitch_0
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 495
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleResponseSetLocationEnabled(Landroid/os/AsyncResult;)V

    .line 496
    goto/16 :goto_2

    .line 492
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    goto/16 :goto_2

    .line 519
    :sswitch_2
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 520
    .local v0, "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->requestLocationFromNetworkLocation()Z

    move-result v2

    if-nez v2, :cond_a

    .line 521
    iget v2, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    if-lez v2, :cond_0

    .line 522
    const-string v2, "EVENT_RETRY_NETWORK_LOCATION_REQUEST retry."

    invoke-virtual {v11, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 523
    nop

    .line 524
    const/16 v2, 0xbc4

    invoke-virtual {v11, v2, v1, v1, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 523
    const-wide/16 v2, 0xbb8

    invoke-virtual {v11, v1, v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 527
    :cond_0
    const-string v1, "EVENT_RETRY_NETWORK_LOCATION_REQUEST retry fail, skip."

    invoke-virtual {v11, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 528
    iget-object v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 529
    sget v1, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    goto/16 :goto_2

    .line 498
    .end local v0    # "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    :sswitch_3
    iget v0, v12, Landroid/os/Message;->arg1:I

    .line 499
    .local v0, "cacheEnable":I
    const-string v2, "ImsLocationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cacheEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v2, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    .line 501
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 502
    .local v14, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 503
    .local v15, "editor":Landroid/content/SharedPreferences$Editor;
    if-ne v0, v13, :cond_1

    .line 504
    new-instance v10, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/16 v16, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v13, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    invoke-direct {v11, v13}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLocationCache(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 505
    const/4 v1, 0x1

    invoke-direct {v11, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationCacheEnable(Z)V

    .line 506
    new-instance v13, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/16 v4, 0x8

    const/4 v10, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 508
    .local v1, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct {v11, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->proccessLocationFromNetwork(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 509
    .end local v1    # "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    goto/16 :goto_2

    .line 510
    :cond_1
    invoke-direct {v11, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationCacheEnable(Z)V

    .line 511
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_2

    .line 512
    const-string v1, "Failed to commit location cache"

    invoke-virtual {v11, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 514
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->cancelNetworkLocationRequest()V

    .line 516
    goto/16 :goto_2

    .line 464
    .end local v0    # "cacheEnable":I
    .end local v14    # "sp":Landroid/content/SharedPreferences;
    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    :sswitch_4
    iget-object v0, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    iput-boolean v0, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    .line 466
    iget-boolean v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLastLocationSetting:Z

    if-eq v0, v1, :cond_3

    .line 467
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationEnabled()V

    goto/16 :goto_2

    .line 469
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Same location setting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 471
    goto/16 :goto_2

    .line 432
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleAllRetryLocationRequest()V

    .line 433
    goto/16 :goto_2

    .line 429
    :sswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleRetryLocationRequest(Landroid/os/Message;)V

    .line 430
    goto/16 :goto_2

    .line 476
    :sswitch_7
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getMainCapabilityPhoneId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 478
    goto/16 :goto_2

    .line 446
    :sswitch_8
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 447
    .local v0, "iso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 448
    iget-object v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 450
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setCountryCode(Ljava/lang/String;)V

    goto :goto_1

    .line 451
    :cond_4
    iget-object v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 452
    iget-object v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    if-eqz v1, :cond_5

    goto :goto_0

    .line 457
    :cond_5
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setCountryCode(Ljava/lang/String;)V

    goto :goto_1

    .line 454
    :cond_6
    :goto_0
    new-instance v13, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    invoke-direct {v11, v13}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 460
    :cond_7
    :goto_1
    iput-object v0, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    goto :goto_2

    .line 441
    .end local v0    # "iso":Ljava/lang/String;
    :sswitch_9
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 442
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 443
    goto :goto_2

    .line 436
    .end local v0    # "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    :sswitch_a
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 437
    .local v0, "location":Landroid/location/Location;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleNetworkLocationUpdate(Landroid/location/Location;)V

    .line 438
    goto :goto_2

    .line 480
    .end local v0    # "location":Landroid/location/Location;
    :sswitch_b
    iget-object v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeout:Z

    .line 482
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 484
    .local v0, "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLastKnownLocation(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Z

    move-result v1

    .line 486
    .local v1, "getLocationSuccess":Z
    if-eqz v1, :cond_a

    .line 487
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->cancelNetworkLocationRequest()V

    goto :goto_2

    .line 482
    .end local v0    # "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .end local v1    # "getLocationSuccess":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 418
    :sswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isCtaNotAllow()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 419
    return-void

    .line 421
    :cond_8
    iget-object v0, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    if-nez v0, :cond_9

    .line 422
    const-string v0, "ImsLocationHandler"

    const-string v1, "Wi-Fi isn\'t connected and network unavailable."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->addRetryLocationRequest(Landroid/os/Message;)V

    .line 424
    return-void

    .line 426
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleLocationRequest(Landroid/os/Message;)V

    .line 427
    nop

    .line 537
    :cond_a
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xbb8 -> :sswitch_c
        0xbb9 -> :sswitch_b
        0xbba -> :sswitch_a
        0xbbb -> :sswitch_a
        0xbbc -> :sswitch_9
        0xbbd -> :sswitch_8
        0xbbe -> :sswitch_7
        0xbbf -> :sswitch_6
        0xbc0 -> :sswitch_5
        0xbc1 -> :sswitch_4
        0xbc2 -> :sswitch_7
        0xbc3 -> :sswitch_3
        0xbc4 -> :sswitch_2
        0xbc5 -> :sswitch_7
        0xc1c -> :sswitch_1
        0xc1d -> :sswitch_0
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 676
    sget-boolean v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->USR_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->TELDBG:Z

    if-eqz v0, :cond_1

    .line 677
    :cond_0
    const-string v0, "ImsLocationHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_1
    return-void
.end method

.method protected notifyMultiSimConfigChanged(I[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 5
    .param p1, "activeModemCount"    # I
    .param p2, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 654
    iget v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mSimCount:I

    .line 656
    .local v0, "prevActiveModemCount":I
    iput-object p2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 658
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

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsLocationHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    if-ne v0, p1, :cond_0

    return-void

    .line 663
    :cond_0
    iput p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mSimCount:I

    .line 665
    if-le v0, p1, :cond_1

    goto :goto_1

    .line 668
    :cond_1
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 669
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerRequestGeoLocation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method
