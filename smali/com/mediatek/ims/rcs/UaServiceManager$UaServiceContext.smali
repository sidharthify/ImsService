.class final Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UaServiceContext"
.end annotation


# instance fields
.field private final acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

.field private final imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

.field private mAcsCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCapability:Lcom/mediatek/ims/rcsua/Capability;

.field private mCcNotified:Z

.field private mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

.field private mPhoneId:I

.field private mRetryCount:I

.field private mSipCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

.field private mStateCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

.field private mUpdateRcsFeatureTagState:Z

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private final sipEventCallback:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

.field final synthetic this$0:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p2, "phoneId"    # I

    .line 485
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->serviceConnection:Landroid/content/ServiceConnection;

    .line 845
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    .line 943
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->sipEventCallback:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    .line 988
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 1027
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/Capability;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    .line 1028
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    .line 1029
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    .line 1030
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    .line 1033
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    .line 486
    iput p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    .line 487
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/ISipEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->sipEventCallback:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .param p1, "x1"    # I

    .line 484
    iput p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcNotified:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 484
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 484
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcsua/service/ISipChannel;)Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 484
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    return-object p1
.end method


# virtual methods
.method activate()V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 647
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->activate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 651
    :cond_0
    :goto_0
    return-void
.end method

.method addAcsCallback(Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;

    .line 613
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_1

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    :goto_0
    goto :goto_1

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_1
    :goto_1
    return-void
.end method

.method addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 663
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 665
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 669
    :cond_0
    :goto_0
    return-void
.end method

.method addSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 1
    .param p1, "sipCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 601
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 602
    return-void
.end method

.method addStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 1
    .param p1, "stateCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 585
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 586
    return-void
.end method

.method clearAcsCallbacks()V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 638
    return-void
.end method

.method clearSipCallbacks()V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 610
    return-void
.end method

.method clearStateCallbacks()V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 594
    return-void
.end method

.method deactivate()V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 656
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 660
    :cond_0
    :goto_0
    return-void
.end method

.method public getAcsConfigInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "result":I
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 749
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 751
    goto :goto_0

    .line 750
    :catch_0
    move-exception v1

    .line 753
    :cond_0
    :goto_0
    return v0
.end method

.method public getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 760
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 762
    goto :goto_0

    .line 761
    :catch_0
    move-exception v1

    .line 764
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 2

    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "configuration":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 738
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 740
    goto :goto_0

    .line 739
    :catch_0
    move-exception v1

    .line 742
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getCapabilities()Lcom/mediatek/ims/rcsua/Capability;
    .locals 2

    .line 780
    const/4 v0, 0x0

    .line 782
    .local v0, "capability":Lcom/mediatek/ims/rcsua/Capability;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 784
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 786
    goto :goto_0

    .line 785
    :catch_0
    move-exception v1

    .line 788
    :cond_0
    :goto_0
    return-object v0
.end method

.method getCapability()Lcom/mediatek/ims/rcsua/Capability;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    return-object v0
.end method

.method getImsClient()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    return-object v0
.end method

.method getPhoneId()I
    .locals 1

    .line 641
    iget v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    return v0
.end method

.method getSipCallbacks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;",
            ">;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method getSipChannel()Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    return-object v0
.end method

.method getStateCallbacks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;",
            ">;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method getUaService()Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method getUpdateRcsFeatureTagState()Z
    .locals 1

    .line 792
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUpdateRcsFeatureTagState:Z

    return v0
.end method

.method public isActivated()Z
    .locals 2

    .line 768
    const/4 v0, 0x0

    .line 770
    .local v0, "activated":Z
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 772
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isActivated()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 774
    goto :goto_0

    .line 773
    :catch_0
    move-exception v1

    .line 776
    :cond_0
    :goto_0
    return v0
.end method

.method isCcNotified()Z
    .locals 1

    .line 800
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcNotified:Z

    return v0
.end method

.method removeAcsCallback(Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;

    .line 627
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 628
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 634
    :cond_0
    :goto_0
    return-void
.end method

.method public removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 672
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 674
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    .line 678
    :cond_0
    :goto_0
    return-void
.end method

.method removeSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 1
    .param p1, "sipCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 605
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 606
    return-void
.end method

.method removeStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 1
    .param p1, "stateCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 589
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 590
    return-void
.end method

.method public sendSipMessage(Landroid/telephony/ims/SipMessage;)Z
    .locals 4
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;

    .line 699
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-eqz v0, :cond_1

    .line 700
    const/4 v1, 0x0

    .line 702
    .local v1, "available":Z
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->isAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 704
    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 705
    :goto_0
    if-eqz v1, :cond_0

    .line 707
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toEncodedMessage()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->sendMessageAsync([BLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 709
    goto :goto_1

    .line 708
    :catch_1
    move-exception v0

    .line 711
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 713
    .end local v1    # "available":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method setCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 577
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    .line 578
    return-void
.end method

.method setCcNotified(Z)V
    .locals 0
    .param p1, "ccNotified"    # Z

    .line 804
    iput-boolean p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcNotified:Z

    .line 805
    return-void
.end method

.method setImsClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    .locals 0
    .param p1, "imsClient"    # Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 561
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 562
    return-void
.end method

.method public setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 1
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 717
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 719
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 723
    :cond_0
    :goto_0
    return-void
.end method

.method setSipChannel(Lcom/mediatek/ims/rcsua/service/ISipChannel;)V
    .locals 0
    .param p1, "sipChannel"    # Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 569
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 570
    return-void
.end method

.method setUaService(Lcom/mediatek/ims/rcsua/service/IRcsUaService;)V
    .locals 0
    .param p1, "uaService"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 553
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 554
    return-void
.end method

.method setUpdateRcsFeatureTagState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 796
    iput-boolean p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUpdateRcsFeatureTagState:Z

    .line 797
    return-void
.end method

.method startService()V
    .locals 4

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.rcsua.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone_id"

    iget v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v1, "options":Landroid/os/Bundle;
    const-string v2, "OPTION_ROI_SUPPORT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 495
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget-boolean v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager;->acsSupported:Z

    const-string v3, "OPTION_ACS_SUPPORT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 496
    const-string v2, "service_options"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 498
    const-string v2, "com.mediatek.ims.rcsua.service"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 501
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void
.end method

.method stopService()V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_3

    .line 517
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 520
    .local v0, "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->close(Lcom/mediatek/ims/rcsua/service/RcsUaException;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    goto :goto_0

    .line 521
    :catch_0
    move-exception v2

    .line 523
    :goto_0
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 525
    .end local v0    # "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->clearSipCallbacks()V

    .line 526
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    if-eqz v0, :cond_1

    .line 528
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 530
    goto :goto_1

    .line 529
    :catch_1
    move-exception v0

    .line 531
    :goto_1
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->clearStateCallbacks()V

    .line 535
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 537
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 539
    goto :goto_2

    .line 538
    :catch_2
    move-exception v0

    .line 540
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 544
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 546
    :cond_3
    return-void
.end method

.method public triggerAcsRequest(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 726
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 728
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerAcsRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 732
    :cond_0
    :goto_0
    return-void
.end method

.method public triggerRestoration()V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 692
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRestoration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 696
    :cond_0
    :goto_0
    return-void
.end method

.method public updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 681
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 683
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    .line 687
    :cond_0
    :goto_0
    return-void
.end method
