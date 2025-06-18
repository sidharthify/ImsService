.class public Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;
.super Ljava/lang/Object;
.source "OperatorCustomizationFactoryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;,
        Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    }
.end annotation


# static fields
.field private static final CUSTOM_APK_PATH:Ljava/lang/String; = "/custom/app/"

.field private static final CUSTOM_JAR_PATH:Ljava/lang/String; = "/custom/operator/libs/"

.field private static final LOG_ENABLE:Z

.field private static final PRODUCT_APK_PATH:Ljava/lang/String; = "/product/app/"

.field private static final PRODUCT_JAR_PATH:Ljava/lang/String; = "/product/operator/libs/"

.field private static final PROPERTY_OPERATOR_OPTR:Ljava/lang/String; = "persist.vendor.operator.optr"

.field private static final PROPERTY_OPERATOR_SEG:Ljava/lang/String; = "persist.vendor.operator.seg"

.field private static final PROPERTY_OPERATOR_SPEC:Ljava/lang/String; = "persist.vendor.operator.spec"

.field private static final RSC_PRODUCT_APK_PATH:Ljava/lang/String;

.field private static final RSC_SYSTEM_APK_PATH:Ljava/lang/String;

.field private static final RSC_SYSTEM_EXT_APK_PATH:Ljava/lang/String;

.field private static final SYSTEM_APK_PATH:Ljava/lang/String; = "/system/app/"

.field private static final SYSTEM_EXT_APK_PATH:Ljava/lang/String; = "/system_ext/app/"

.field private static final SYSTEM_EXT_JAR_PATH:Ljava/lang/String; = "/system_ext/operator/libs/"

.field private static final SYSTEM_JAR_PATH:Ljava/lang/String; = "/system/operator/libs/"

.field private static final TAG:Ljava/lang/String; = "OperatorCustomizationFactoryLoader"

.field private static final USP_PACKAGE:Ljava/lang/String;

.field private static final sFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    nop

    .line 30
    const-string v0, "ro.vendor.mtk_carrierexpress_pack"

    const-string v1, "no"

    invoke-static {v0, v1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->USP_PACKAGE:Ljava/lang/String;

    .line 40
    nop

    .line 41
    const-string v0, "ro.sys.current_rsc_path"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->RSC_SYSTEM_APK_PATH:Ljava/lang/String;

    .line 42
    nop

    .line 43
    const-string v0, "ro.sys_ext.current_rsc_path"

    invoke-static {v0, v1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->RSC_SYSTEM_EXT_APK_PATH:Ljava/lang/String;

    .line 44
    nop

    .line 45
    const-string v0, "ro.product.current_rsc_path"

    invoke-static {v0, v1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->RSC_PRODUCT_APK_PATH:Ljava/lang/String;

    .line 49
    const-string v0, "ro.build.type"

    const-string v1, "eng"

    invoke-static {v0, v1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    const-string v0, "OperatorCustomizationFactoryLoader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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
    sput-boolean v0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->LOG_ENABLE:Z

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->sFactoryMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findOpertorFactoryInfo(Ljava/util/List;I)Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    .locals 7
    .param p1, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;I)",
            "Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;"
        }
    .end annotation

    .line 417
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const/4 v0, 0x0

    .line 418
    .local v0, "ret":Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    invoke-static {p1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->getActiveOperatorInfo(I)Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;

    move-result-object v1

    .line 419
    .local v1, "optrInfo":Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;
    if-eqz v1, :cond_9

    invoke-static {v1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->access$000(Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 425
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v2, "unSignedOperatorIdFactoryInfos":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    .line 428
    .local v4, "factoryInfo":Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    invoke-static {v1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->access$000(Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 429
    iget-object v5, v4, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSegment:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 430
    iget-object v5, v4, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSegment:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->access$100(Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 431
    iget-object v5, v4, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    .line 432
    invoke-static {v1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->access$200(Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 433
    :cond_1
    move-object v0, v4

    .line 434
    goto :goto_1

    .line 437
    :cond_2
    iget-object v5, v4, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    .line 438
    invoke-static {v1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->access$200(Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 439
    :cond_3
    move-object v0, v4

    .line 440
    goto :goto_1

    .line 442
    :cond_4
    iget-object v5, v4, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mOperator:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 443
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v4    # "factoryInfo":Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    :cond_5
    goto :goto_0

    .line 446
    :cond_6
    :goto_1
    if-nez v0, :cond_8

    .line 448
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    .line 449
    .restart local v4    # "factoryInfo":Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    iget-object v5, v4, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mLibName:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->searchTargetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 450
    .local v5, "target":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 451
    move-object v0, v4

    .line 452
    goto :goto_3

    .line 454
    .end local v4    # "factoryInfo":Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    .end local v5    # "target":Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 456
    :cond_8
    :goto_3
    return-object v0

    .line 421
    .end local v2    # "unSignedOperatorIdFactoryInfos":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    :cond_9
    :goto_4
    const-string v2, "It\'s OM load or parse failed, because operator is null"

    invoke-static {v2}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 422
    return-object v0
.end method

.method private static getActiveOperatorInfo()Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;
    .locals 5

    .line 173
    new-instance v0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;

    const-string v1, "persist.vendor.operator.optr"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v3, "persist.vendor.operator.spec"

    invoke-static {v3, v2}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    const-string v4, "persist.vendor.operator.seg"

    invoke-static {v4, v2}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v0, "info":Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;
    return-object v0
.end method

.method private static getActiveOperatorInfo(I)Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;
    .locals 7
    .param p0, "slot"    # I

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "info":Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;
    const/4 v1, -0x1

    if-eq p0, v1, :cond_3

    const-string v1, "no"

    sget-object v2, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->USP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.vendor.mtk_usp_optr_slot_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "optrProperty":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usp optr property is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 191
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "items":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 193
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 194
    new-instance v4, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;

    aget-object v5, v3, v5

    invoke-direct {v4, v5, v2, v2}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    .line 195
    :cond_0
    array-length v2, v3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 196
    new-instance v2, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;

    aget-object v4, v3, v5

    aget-object v5, v3, v6

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-direct {v2, v4, v5, v6}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 198
    :cond_1
    const-string v2, "usp optr property no content or wrong"

    invoke-static {v2}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V

    .line 202
    .end local v1    # "optrProperty":Ljava/lang/String;
    .end local v3    # "items":[Ljava/lang/String;
    :cond_2
    :goto_0
    goto :goto_1

    .line 203
    :cond_3
    invoke-static {}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->getActiveOperatorInfo()Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;

    move-result-object v0

    .line 205
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s OperatorInfo is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 206
    return-object v0
.end method

.method private static getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 354
    const-string v0, "Get system properties failed! "

    const-string v1, ""

    .line 356
    .local v1, "propValue":Ljava/lang/String;
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 357
    .local v2, "systemPropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 358
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 359
    .local v3, "getPropMethod":Ljava/lang/reflect/Method;
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 369
    .end local v2    # "systemPropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getPropMethod":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 367
    :catch_0
    move-exception v2

    .line 368
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V

    goto :goto_1

    .line 365
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 366
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 363
    :catch_2
    move-exception v2

    .line 364
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 361
    :catch_3
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 370
    :goto_1
    return-object v1
.end method

.method public static loadFactory(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 255
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->loadFactory(Landroid/content/Context;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized loadFactory(Landroid/content/Context;Ljava/util/List;I)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const-class v0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;

    monitor-enter v0

    .line 272
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, p0, p1, p2}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->loadFactory(Ljava/lang/ClassLoader;Landroid/content/Context;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 272
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    .end local p2    # "slot":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized loadFactory(Ljava/lang/ClassLoader;Landroid/content/Context;Ljava/util/List;I)Ljava/lang/Object;
    .locals 7
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const-class v0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;

    monitor-enter v0

    .line 277
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 278
    :try_start_0
    const-string v2, "loadFactory failed, because param list is null"

    invoke-static {v2}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit v0

    return-object v1

    .line 281
    :cond_0
    :try_start_1
    invoke-static {p2, p3}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->findOpertorFactoryInfo(Ljava/util/List;I)Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    move-result-object v2

    .line 282
    .local v2, "factoryInfo":Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    if-nez v2, :cond_2

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 287
    .end local v4    # "index":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not find operatorFactoryInfo by slot id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-static {v4}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    monitor-exit v0

    return-object v1

    .line 293
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    sget-object v3, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->sFactoryMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 294
    .local v4, "factory":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from cache by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    monitor-exit v0

    return-object v4

    .line 298
    :cond_3
    :try_start_3
    iget-object v5, v2, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mLibName:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->searchTargetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_4

    .line 301
    monitor-exit v0

    return-object v1

    .line 304
    :cond_4
    :try_start_4
    iget-object v1, v2, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mFactoryName:Ljava/lang/String;

    iget-object v6, v2, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p0, p1, v5, v1, v6}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->loadFactoryInternal(Ljava/lang/ClassLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 306
    .end local v4    # "factory":Ljava/lang/Object;
    .local v1, "factory":Ljava/lang/Object;
    if-eqz v1, :cond_5

    .line 308
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 310
    :cond_5
    monitor-exit v0

    return-object v1

    .line 276
    .end local v1    # "factory":Ljava/lang/Object;
    .end local v2    # "factoryInfo":Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    .end local v5    # "path":Ljava/lang/String;
    .end local p0    # "clazzLoader":Ljava/lang/ClassLoader;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    .end local p3    # "slot":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static loadFactory(Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 222
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->loadFactory(Ljava/lang/ClassLoader;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static loadFactory(Ljava/lang/ClassLoader;Ljava/util/List;I)Ljava/lang/Object;
    .locals 1
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 240
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->loadFactory(Ljava/lang/ClassLoader;Landroid/content/Context;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static loadFactoryInternal(Ljava/lang/ClassLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "factoryClassName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load factory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " whose packageName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", context is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 319
    const-string v0, "OperatorCustomizationFactoryLoader"

    if-eqz p0, :cond_0

    .line 320
    :try_start_0
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-direct {v1, p2, p0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 347
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 321
    :cond_0
    if-eqz p1, :cond_1

    .line 322
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 324
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    new-instance v1, Ldalvik/system/PathClassLoader;

    .line 325
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 328
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 329
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load class : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " successfully with classLoader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 332
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 334
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 335
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x3

    invoke-virtual {p1, p4, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 337
    .local v4, "opContext":Landroid/content/Context;
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 341
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "opContext":Landroid/content/Context;
    :catch_1
    move-exception v3

    .line 343
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    const-string v4, "Exception occurs when execute constructor with Context"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 338
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 340
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Exception occurs when using constructor with Context"

    invoke-static {v4}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 344
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    nop

    .line 346
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 348
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    const-string v2, "Exception when initial instance"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v1    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 460
    sget-boolean v0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 461
    const-string v0, "OperatorCustomizationFactoryLoader"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 466
    sget-boolean v0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 467
    const-string v0, "OperatorCustomizationFactoryLoader"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    return-void
.end method

.method private static searchTargetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "target"    # Ljava/lang/String;

    .line 374
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "target is null"

    invoke-static {v0}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V

    .line 376
    return-object v1

    .line 379
    :cond_0
    move-object v0, p0

    .line 380
    .local v0, "search":Ljava/lang/String;
    const-string v2, ".apk"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    sget-object v2, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->RSC_SYSTEM_APK_PATH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/app/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->RSC_PRODUCT_APK_PATH:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->RSC_SYSTEM_EXT_APK_PATH:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/system/app/"

    const-string v9, "/system_ext/app/"

    const-string v10, "/product/app/"

    const-string v11, "/custom/app/"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v2

    .local v2, "searchFolders":[Ljava/lang/String;
    goto :goto_0

    .line 394
    .end local v2    # "searchFolders":[Ljava/lang/String;
    :cond_1
    const-string v2, "/product/app/"

    const-string v4, "/custom/app/"

    const-string v5, "/system/app/"

    const-string v6, "/system_ext/app/"

    filled-new-array {v5, v6, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "searchFolders":[Ljava/lang/String;
    goto :goto_0

    .line 400
    .end local v2    # "searchFolders":[Ljava/lang/String;
    :cond_2
    const-string v2, "/product/operator/libs/"

    const-string v4, "/custom/operator/libs/"

    const-string v5, "/system/operator/libs/"

    const-string v6, "/system_ext/operator/libs/"

    filled-new-array {v5, v6, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 405
    .restart local v2    # "searchFolders":[Ljava/lang/String;
    :goto_0
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, v2, v3

    .line 406
    .local v5, "folder":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 405
    .end local v5    # "folder":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 411
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not find target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 412
    return-object v1
.end method
