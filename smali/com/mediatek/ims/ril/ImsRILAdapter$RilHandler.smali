.class Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;
.super Landroid/os/Handler;
.source "ImsRILAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ril/ImsRILAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RilHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 647
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 653
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 739
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 653
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 795
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 796
    .local v0, "mtkService":I
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v6, v0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v3

    .line 797
    .local v3, "mtkProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v8, v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], EVENT_TRIGGER_MTK_AIDL_PENDING_URC, mMtkRadioVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 798
    invoke-static {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mtkService = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1400(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 797
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 799
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 800
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 801
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 803
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v7, v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], resend EVENT_TRIGGER_MTK_AIDL_PENDING_URC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 804
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v5, v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v6, v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 805
    const/16 v7, 0xc

    invoke-virtual {v6, v7, v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 804
    invoke-virtual {v5, v4, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 736
    .end local v0    # "mtkService":I
    .end local v3    # "mtkProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 737
    .local v0, "aospService":I
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v6, v0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v3

    .line 738
    .local v3, "aospProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v8, v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], EVENT_TRIGGER_AOSP_AIDL_PENDING_URC, mRadioVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 739
    invoke-static {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$800(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", aospService = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$700(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 738
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 740
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$800(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 741
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$800(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 742
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 744
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v7, v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], resend EVENT_TRIGGER_AOSP_AIDL_PENDING_URC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 745
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v5, v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v6, v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 746
    const/16 v7, 0xb

    invoke-virtual {v6, v7, v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 745
    invoke-virtual {v5, v4, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 750
    .end local v0    # "aospService":I
    .end local v3    # "aospProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    :cond_0
    goto/16 :goto_2

    .line 783
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 784
    .local v0, "mtkService":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 785
    .local v1, "obj":Ljava/util/concurrent/atomic/AtomicLong;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], EVENT_MTK_AIDL_PROXY_DEAD cookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mtkService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 786
    invoke-static {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1400(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", MtkCookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 787
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$900(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 785
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$900(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 789
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    .line 792
    .end local v0    # "mtkService":I
    .end local v1    # "obj":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_1
    goto/16 :goto_2

    .line 724
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 725
    .local v0, "aidlService":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 726
    .restart local v1    # "obj":Ljava/util/concurrent/atomic/AtomicLong;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], EVENT_AIDL_PROXY_DEAD cookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 727
    invoke-static {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$700(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 728
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 730
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$600(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    .line 733
    .end local v0    # "aidlService":I
    .end local v1    # "obj":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2
    goto/16 :goto_2

    .line 764
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1100(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 765
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1200(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v3

    .line 766
    .local v3, "mtkProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 768
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], Trigger to fire pending URC "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->notifyImsServiceReady()V

    goto :goto_0

    .line 770
    :cond_3
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 771
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 773
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v6, v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], resend EVENT_TRIGGER_TO_FIRE_PENDING_URC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 774
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 775
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v6, v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 776
    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 775
    invoke-virtual {v4, v5, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 780
    .end local v0    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .end local v3    # "mtkProxy":Landroid/hidl/base/V1_0/IBase;
    :cond_4
    :goto_0
    goto/16 :goto_2

    .line 753
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], EVENT_MTK_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMtkServiceCookies  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 754
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$900(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 753
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 755
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$900(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 756
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    goto/16 :goto_2

    .line 712
    :pswitch_7
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], EVENT_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 713
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 714
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 715
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$600(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    goto/16 :goto_2

    .line 692
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 693
    .local v0, "serial":I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$100(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 695
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-nez v1, :cond_5

    .line 696
    goto/16 :goto_2

    .line 700
    :cond_5
    iget-object v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_6

    .line 701
    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$200(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;

    move-result-object v2

    .line 702
    .local v2, "timeoutResponse":Ljava/lang/Object;
    iget-object v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v4, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 703
    iget-object v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 704
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v6, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilTimeoutResponse(III)V

    .line 707
    .end local v2    # "timeoutResponse":Ljava/lang/Object;
    :cond_6
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$400(Lcom/mediatek/ims/ril/ImsRILAdapter;Lcom/mediatek/ims/ril/RILRequest;)V

    .line 708
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 709
    goto/16 :goto_2

    .line 684
    .end local v0    # "serial":I
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Z

    goto/16 :goto_2

    .line 666
    :pswitch_a
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 667
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v1, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 669
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 670
    .local v1, "count":I
    const-string v2, "IMS_RILA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_7

    .line 673
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/RILRequest;

    .line 674
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const-string v4, "IMS_RILA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v6, v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "],"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 676
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 674
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 680
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_7
    monitor-exit v0

    .line 681
    goto :goto_2

    .line 680
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 812
    :cond_8
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
