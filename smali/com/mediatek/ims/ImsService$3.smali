.class Lcom/mediatek/ims/ImsService$3;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;

    .line 4449
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 5

    .line 4452
    const/4 v0, 0x1

    .line 4453
    .local v0, "needDereg":Z
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$300(Lcom/mediatek/ims/ImsService;)I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 4454
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$4700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    .line 4455
    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v2

    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    .line 4457
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$4800(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    invoke-static {v2, v1, v4}, Lcom/mediatek/ims/ImsService;->access$5100(Lcom/mediatek/ims/ImsService;IZ)V

    .line 4458
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$4700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v2

    aput-boolean v3, v2, v1

    .line 4460
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$4700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 4461
    const/4 v0, 0x0

    .line 4453
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4464
    .end local v1    # "phoneId":I
    :cond_2
    if-eqz v0, :cond_3

    .line 4465
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$500(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    .line 4466
    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$4600(Lcom/mediatek/ims/ImsService;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 4467
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1, v3}, Lcom/mediatek/ims/ImsService;->access$4502(Lcom/mediatek/ims/ImsService;Z)Z

    .line 4469
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v2, "volte_setting onSubscriptionsChanged finished"

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 4470
    return-void
.end method
