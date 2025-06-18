.class public abstract Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioEx.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7069
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 7072
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7085
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 7122
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 7123
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 7124
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 7125
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 7126
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 7097
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    filled-new-array {v2, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        0x65t
        -0x1at
        0x16t
        0x7et
        0x76t
        -0x4t
        -0x6t
        -0x2at
        0x26t
        0x6ft
        -0x4at
        0x36t
        -0x1dt
        0x70t
        -0x7t
        0x79t
        0x3at
        -0x28t
        0x7ft
        -0x78t
        -0x6ct
        0x67t
        -0x38t
        -0x7t
        0x70t
        0x31t
        0x14t
        0x63t
        0x79t
        -0xat
        0x5ct
        -0x60t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7077
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioEx"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 7091
    const-string v0, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioEx"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 7110
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 7132
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 7134
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 24
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7162
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioEx"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 9826
    :sswitch_0
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9828
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->notifySyspropsChanged()V

    .line 9829
    goto/16 :goto_1

    .line 9815
    :sswitch_1
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9817
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 9818
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9819
    invoke-virtual {v0, v13}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 9820
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9821
    goto/16 :goto_1

    .line 9805
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9807
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->ping()V

    .line 9808
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9809
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9810
    goto/16 :goto_1

    .line 9800
    :sswitch_3
    goto/16 :goto_1

    .line 9792
    :sswitch_4
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9794
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setHALInstrumentation()V

    .line 9795
    goto/16 :goto_1

    .line 9758
    :sswitch_5
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9760
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 9761
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9763
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 9765
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 9766
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 9767
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 9768
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 9769
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 9771
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 9772
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 9774
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 9778
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 9779
    nop

    .line 9769
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9775
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 9782
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 9784
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v13, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 9786
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9787
    goto/16 :goto_1

    .line 9747
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9749
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 9750
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9751
    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 9752
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9753
    goto/16 :goto_1

    .line 9735
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 9738
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9739
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 9740
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9741
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9742
    goto/16 :goto_1

    .line 9724
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9726
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 9727
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9728
    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 9729
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9730
    goto/16 :goto_1

    .line 9704
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9707
    .local v10, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 9708
    .local v14, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    move-object v15, v0

    .line 9709
    .local v15, "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    invoke-virtual {v15, v12}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9710
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 9711
    .local v16, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 9712
    .local v17, "reason":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/LinkAddress;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v18

    .line 9713
    .local v18, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/LinkAddress;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v19

    .line 9714
    .local v19, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalTrafficDescriptor;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalTrafficDescriptor;-><init>()V

    move-object v9, v0

    .line 9715
    .local v9, "trafficDescriptor":Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalTrafficDescriptor;
    invoke-virtual {v9, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalTrafficDescriptor;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9716
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalVerifyDescriptor;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalVerifyDescriptor;-><init>()V

    move-object v8, v0

    .line 9717
    .local v8, "verifyDescriptor":Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalVerifyDescriptor;
    invoke-virtual {v8, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalVerifyDescriptor;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9718
    move-object/from16 v0, p0

    move v1, v10

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v20, v8

    .end local v8    # "verifyDescriptor":Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalVerifyDescriptor;
    .local v20, "verifyDescriptor":Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalVerifyDescriptor;
    move-object v8, v9

    move-object/from16 v21, v9

    .end local v9    # "trafficDescriptor":Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalTrafficDescriptor;
    .local v21, "trafficDescriptor":Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalTrafficDescriptor;
    move-object/from16 v9, v20

    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setupDataCallSlice_1_6(IILandroid/hardware/radio/V1_5/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalTrafficDescriptor;Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalVerifyDescriptor;)V

    .line 9719
    goto/16 :goto_1

    .line 9691
    .end local v10    # "serial":I
    .end local v14    # "accessNetwork":I
    .end local v15    # "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    .end local v16    # "roamingAllowed":Z
    .end local v17    # "reason":I
    .end local v18    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/LinkAddress;>;"
    .end local v19    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "verifyDescriptor":Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalVerifyDescriptor;
    .end local v21    # "trafficDescriptor":Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalTrafficDescriptor;
    :sswitch_a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 9694
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v7

    .line 9695
    .local v7, "saEnable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v8

    .line 9696
    .local v8, "saDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v9

    .line 9697
    .local v9, "nsaEnable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 9698
    .local v10, "nsaDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setNrBandMode(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 9699
    goto/16 :goto_1

    .line 9682
    .end local v6    # "serial":I
    .end local v7    # "saEnable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "saDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "nsaEnable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "nsaDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9684
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9685
    .local v0, "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getAllBandMode(I)V

    .line 9686
    goto/16 :goto_1

    .line 9673
    .end local v0    # "serial":I
    :sswitch_c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9676
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getIWlanRegistrationState(I)V

    .line 9677
    goto/16 :goto_1

    .line 9663
    .end local v0    # "serial":I
    :sswitch_d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9666
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9667
    .local v1, "index":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getEngineeringModeInfo(II)V

    .line 9668
    goto/16 :goto_1

    .line 9654
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9657
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getDisable2G(I)V

    .line 9658
    goto/16 :goto_1

    .line 9644
    .end local v0    # "serial":I
    :sswitch_f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9647
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9648
    .local v1, "mode":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setDisable2G(IZ)V

    .line 9649
    goto/16 :goto_1

    .line 9635
    .end local v0    # "serial":I
    .end local v1    # "mode":Z
    :sswitch_10
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9638
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getLteScanDuration(I)V

    .line 9639
    goto/16 :goto_1

    .line 9625
    .end local v0    # "serial":I
    :sswitch_11
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9627
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9628
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9629
    .local v1, "duration":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setLteScanDuration(II)V

    .line 9630
    goto/16 :goto_1

    .line 9615
    .end local v0    # "serial":I
    .end local v1    # "duration":I
    :sswitch_12
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9618
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9619
    .local v1, "fddOrTdd":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getTm9Enabled(IZ)V

    .line 9620
    goto/16 :goto_1

    .line 9604
    .end local v0    # "serial":I
    .end local v1    # "fddOrTdd":Z
    :sswitch_13
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9607
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9608
    .restart local v1    # "fddOrTdd":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9609
    .local v2, "enabled":Z
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setTm9Enabled(IZZ)V

    .line 9610
    goto/16 :goto_1

    .line 9594
    .end local v0    # "serial":I
    .end local v1    # "fddOrTdd":Z
    .end local v2    # "enabled":Z
    :sswitch_14
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9597
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9598
    .local v1, "ulOrDl":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getQamEnabled(IZ)V

    .line 9599
    goto/16 :goto_1

    .line 9583
    .end local v0    # "serial":I
    .end local v1    # "ulOrDl":Z
    :sswitch_15
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9586
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9587
    .restart local v1    # "ulOrDl":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9588
    .restart local v2    # "enabled":Z
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setQamEnabled(IZZ)V

    .line 9589
    goto/16 :goto_1

    .line 9574
    .end local v0    # "serial":I
    .end local v1    # "ulOrDl":Z
    .end local v2    # "enabled":Z
    :sswitch_16
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9577
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCampedFemtoCellInfo(I)V

    .line 9578
    goto/16 :goto_1

    .line 9564
    .end local v0    # "serial":I
    :sswitch_17
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9567
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9568
    .local v1, "primaryBandId":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCaBandMode(II)V

    .line 9569
    goto/16 :goto_1

    .line 9555
    .end local v0    # "serial":I
    .end local v1    # "primaryBandId":I
    :sswitch_18
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9558
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getBandMode(I)V

    .line 9559
    goto/16 :goto_1

    .line 9546
    .end local v0    # "serial":I
    :sswitch_19
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9549
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->clearLteAvailableFile(I)V

    .line 9550
    goto/16 :goto_1

    .line 9536
    .end local v0    # "serial":I
    :sswitch_1a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9539
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9540
    .local v1, "available":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getLte1xRttCellList(IZ)V

    .line 9541
    goto/16 :goto_1

    .line 9527
    .end local v0    # "serial":I
    .end local v1    # "available":Z
    :sswitch_1b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9529
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9530
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getLteBsrTimer(I)V

    .line 9531
    goto/16 :goto_1

    .line 9517
    .end local v0    # "serial":I
    :sswitch_1c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9519
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9520
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9521
    .local v1, "timer":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setLteBsrTimer(II)V

    .line 9522
    goto/16 :goto_1

    .line 9508
    .end local v0    # "serial":I
    .end local v1    # "timer":I
    :sswitch_1d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9511
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->get4x4MimoEnabled(I)V

    .line 9512
    goto/16 :goto_1

    .line 9498
    .end local v0    # "serial":I
    :sswitch_1e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9501
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9502
    .local v1, "enabled_bitmask":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->set4x4MimoEnabled(II)V

    .line 9503
    goto/16 :goto_1

    .line 9488
    .end local v0    # "serial":I
    .end local v1    # "enabled_bitmask":I
    :sswitch_1f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9490
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9491
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 9492
    .local v1, "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setBandPriorityList(ILjava/util/ArrayList;)V

    .line 9493
    goto/16 :goto_1

    .line 9479
    .end local v0    # "serial":I
    .end local v1    # "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_20
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9481
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9482
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getBandPriorityList(I)V

    .line 9483
    goto/16 :goto_1

    .line 9468
    .end local v0    # "serial":I
    :sswitch_21
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9470
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9471
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9472
    .local v1, "bandId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9473
    .local v2, "status":Z
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setLteBandEnableStatus(IIZ)V

    .line 9474
    goto/16 :goto_1

    .line 9459
    .end local v0    # "serial":I
    .end local v1    # "bandId":I
    .end local v2    # "status":Z
    :sswitch_22
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9462
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getLteRRCState(I)V

    .line 9463
    goto/16 :goto_1

    .line 9450
    .end local v0    # "serial":I
    :sswitch_23
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9452
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9453
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getLteData(I)V

    .line 9454
    goto/16 :goto_1

    .line 9440
    .end local v0    # "serial":I
    :sswitch_24
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9442
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9443
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9444
    .local v1, "linkType":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCALinkCapabilityList(II)V

    .line 9445
    goto/16 :goto_1

    .line 9428
    .end local v0    # "serial":I
    .end local v1    # "linkType":I
    :sswitch_25
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9431
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9432
    .local v1, "status":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9433
    .local v2, "bandsCombo":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9434
    .local v3, "linkType":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setCALinkEnableStatus(IZLjava/lang/String;I)V

    .line 9435
    goto/16 :goto_1

    .line 9417
    .end local v0    # "serial":I
    .end local v1    # "status":Z
    .end local v2    # "bandsCombo":Ljava/lang/String;
    .end local v3    # "linkType":I
    :sswitch_26
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9419
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9420
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 9421
    .local v1, "bandsCombo":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9422
    .local v2, "linkType":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCALinkEnableStatus(ILjava/lang/String;I)V

    .line 9423
    goto/16 :goto_1

    .line 9407
    .end local v0    # "serial":I
    .end local v1    # "bandsCombo":Ljava/lang/String;
    .end local v2    # "linkType":I
    :sswitch_27
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9410
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9411
    .local v1, "linkType":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->disableAllCALinks(II)V

    .line 9412
    goto/16 :goto_1

    .line 9398
    .end local v0    # "serial":I
    .end local v1    # "linkType":I
    :sswitch_28
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9400
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9401
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getTOEInfo(I)V

    .line 9402
    goto/16 :goto_1

    .line 9388
    .end local v0    # "serial":I
    :sswitch_29
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9390
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9391
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9392
    .local v1, "option":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setNROption(II)V

    .line 9393
    goto/16 :goto_1

    .line 9378
    .end local v0    # "serial":I
    .end local v1    # "option":I
    :sswitch_2a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9380
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9381
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 9382
    .local v1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V

    .line 9383
    goto/16 :goto_1

    .line 9360
    .end local v0    # "serial":I
    .end local v1    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_2b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9362
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 9363
    .local v14, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 9364
    .local v15, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9365
    .local v16, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9366
    .local v17, "ipv6Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9367
    .local v18, "ipv4PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 9368
    .local v19, "ipv6PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 9369
    .local v20, "ipv4Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 9370
    .local v21, "ipv6Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v22

    .line 9371
    .local v22, "dnsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 9372
    .local v23, "dnsServers":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    invoke-virtual/range {v0 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 9373
    goto/16 :goto_1

    .line 9346
    .end local v14    # "serial":I
    .end local v15    # "ifName":Ljava/lang/String;
    .end local v16    # "ipv4Addr":Ljava/lang/String;
    .end local v17    # "ipv6Addr":Ljava/lang/String;
    .end local v18    # "ipv4PrefixLen":I
    .end local v19    # "ipv6PrefixLen":I
    .end local v20    # "ipv4Gateway":Ljava/lang/String;
    .end local v21    # "ipv6Gateway":Ljava/lang/String;
    .end local v22    # "dnsCount":I
    .end local v23    # "dnsServers":Ljava/lang/String;
    :sswitch_2c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9348
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 9349
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 9350
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9351
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 9352
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 9353
    .local v14, "apMac":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 9354
    .local v15, "mtuSize":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 9355
    goto/16 :goto_1

    .line 9335
    .end local v7    # "serial":I
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v14    # "apMac":Ljava/lang/String;
    .end local v15    # "mtuSize":I
    :sswitch_2d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9338
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 9339
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9340
    .local v2, "isWifiEnabled":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendWifiEnabled(ILjava/lang/String;I)V

    .line 9341
    goto/16 :goto_1

    .line 9324
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "isWifiEnabled":I
    :sswitch_2e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9326
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9327
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;-><init>()V

    .line 9328
    .local v1, "rri":Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9329
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendRsuRequest(ILvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;)V

    .line 9330
    goto/16 :goto_1

    .line 9314
    .end local v0    # "serial":I
    .end local v1    # "rri":Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuRequestInfo;
    :sswitch_2f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9317
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 9318
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setCallAdditionalInfo(ILjava/util/ArrayList;)V

    .line 9319
    goto/16 :goto_1

    .line 9303
    .end local v0    # "serial":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_30
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9306
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9307
    .local v1, "sar_cmd_type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9308
    .local v2, "sar_parameter":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendSarIndicator(IILjava/lang/String;)V

    .line 9309
    goto/16 :goto_1

    .line 9291
    .end local v0    # "serial":I
    .end local v1    # "sar_cmd_type":I
    .end local v2    # "sar_parameter":Ljava/lang/String;
    :sswitch_31
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9293
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9294
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9295
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9296
    .local v2, "tGear":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9297
    .local v3, "lGear":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSmartSceneSwitch(IIII)V

    .line 9298
    goto/16 :goto_1

    .line 9281
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "tGear":I
    .end local v3    # "lGear":I
    :sswitch_32
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9284
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9285
    .restart local v1    # "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getSmartRatSwitch(II)V

    .line 9286
    goto/16 :goto_1

    .line 9270
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_33
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9273
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9274
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9275
    .local v2, "rat":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->smartRatSwitch(III)V

    .line 9276
    goto/16 :goto_1

    .line 9258
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "rat":I
    :sswitch_34
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9260
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioResponse;

    move-result-object v0

    .line 9261
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioIndication;

    move-result-object v2

    .line 9262
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsSmartRatSwitch(Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioIndication;)V

    .line 9263
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9264
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9265
    goto/16 :goto_1

    .line 9248
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISmartRatSwitchRadioIndication;
    :sswitch_35
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9250
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9251
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9252
    .local v1, "ulSpeed":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setMaxUlSpeed(II)V

    .line 9253
    goto/16 :goto_1

    .line 9239
    .end local v0    # "serial":I
    .end local v1    # "ulSpeed":I
    :sswitch_36
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9241
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9242
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getDeactivateNrScgCommunication(I)V

    .line 9243
    goto/16 :goto_1

    .line 9228
    .end local v0    # "serial":I
    :sswitch_37
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9230
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9231
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9232
    .local v1, "deactivate":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9233
    .local v2, "allowSCGAdd":Z
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->deactivateNrScgCommunication(IZZ)V

    .line 9234
    goto/16 :goto_1

    .line 9217
    .end local v0    # "serial":I
    .end local v1    # "deactivate":Z
    .end local v2    # "allowSCGAdd":Z
    :sswitch_38
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9220
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9221
    .local v1, "approve":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9222
    .local v2, "callId":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->eccRedialApprove(III)V

    .line 9223
    goto/16 :goto_1

    .line 9207
    .end local v0    # "serial":I
    .end local v1    # "approve":I
    .end local v2    # "callId":I
    :sswitch_39
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9210
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9211
    .local v1, "uid":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->abortCertificate(II)V

    .line 9212
    goto/16 :goto_1

    .line 9195
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    :sswitch_3a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9198
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 9199
    .local v1, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9200
    .local v2, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9201
    .local v3, "toActive":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->enableCapabaility(ILjava/lang/String;II)V

    .line 9202
    goto/16 :goto_1

    .line 9184
    .end local v0    # "serial":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "toActive":I
    :sswitch_3b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9187
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9188
    .local v1, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9189
    .local v2, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->routeAuthMessage(IILjava/util/ArrayList;)V

    .line 9190
    goto/16 :goto_1

    .line 9172
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9175
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9176
    .restart local v1    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9177
    .local v2, "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9178
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->routeCertificate(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 9179
    goto/16 :goto_1

    .line 9160
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9163
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9164
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9165
    .local v2, "num":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9166
    .local v3, "timer":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getSuggestedPlmnList(IIII)V

    .line 9167
    goto/16 :goto_1

    .line 9147
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "num":I
    .end local v3    # "timer":I
    :sswitch_3e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9149
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 9150
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 9151
    .local v7, "registerQuality":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 9152
    .local v8, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 9153
    .local v9, "thresholdValues":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 9154
    .local v10, "triggerTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->registerCellQltyReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9155
    goto/16 :goto_1

    .line 9138
    .end local v6    # "serial":I
    .end local v7    # "registerQuality":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "thresholdValues":Ljava/lang/String;
    .end local v10    # "triggerTime":Ljava/lang/String;
    :sswitch_3f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9141
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getDsdaStatus(I)V

    .line 9142
    goto/16 :goto_1

    .line 9128
    .end local v0    # "serial":I
    :sswitch_40
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9131
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9132
    .local v1, "enable":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->enableDsdaIndication(IZ)V

    .line 9133
    goto/16 :goto_1

    .line 9118
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_41
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9121
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 9122
    .local v1, "config":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setKeepAliveByIpData(ILjava/lang/String;)V

    .line 9123
    goto/16 :goto_1

    .line 9108
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    :sswitch_42
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9110
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9111
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 9112
    .restart local v1    # "config":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setKeepAliveByPDCPCtrlPDU(ILjava/lang/String;)V

    .line 9113
    goto/16 :goto_1

    .line 9098
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    :sswitch_43
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9101
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9102
    .local v1, "interval":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setIgnoreSameNumberInterval(II)V

    .line 9103
    goto/16 :goto_1

    .line 9088
    .end local v0    # "serial":I
    .end local v1    # "interval":I
    :sswitch_44
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9090
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9091
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9092
    .local v1, "timer":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setCallValidTimer(II)V

    .line 9093
    goto/16 :goto_1

    .line 9078
    .end local v0    # "serial":I
    .end local v1    # "timer":I
    :sswitch_45
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9080
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9081
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 9082
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setGwsdMode(ILjava/util/ArrayList;)V

    .line 9083
    goto/16 :goto_1

    .line 9068
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_46
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9070
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9071
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9072
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsCallMode(II)V

    .line 9073
    goto/16 :goto_1

    .line 9058
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_47
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9060
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9061
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 9062
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSipHeaderReport(ILjava/util/ArrayList;)V

    .line 9063
    goto/16 :goto_1

    .line 9048
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_48
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9050
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9051
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 9052
    .restart local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSipHeader(ILjava/util/ArrayList;)V

    .line 9053
    goto/16 :goto_1

    .line 9039
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_49
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9041
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9042
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getVoiceDomainPreference(I)V

    .line 9043
    goto/16 :goto_1

    .line 9029
    .end local v0    # "serial":I
    :sswitch_4a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9031
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9032
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 9033
    .local v1, "enable":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->enableCAPlusBandWidthFilter(IZ)V

    .line 9034
    goto/16 :goto_1

    .line 9018
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_4b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9020
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9021
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9022
    .local v1, "mcc":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9023
    .local v2, "mnc":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getPlmnNameFromSE13Table(III)V

    .line 9024
    goto/16 :goto_1

    .line 9010
    .end local v0    # "serial":I
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :sswitch_4c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9012
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->notifyImsServiceReady()V

    .line 9013
    goto/16 :goto_1

    .line 9001
    :sswitch_4d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9004
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryVopsStatus(I)V

    .line 9005
    goto/16 :goto_1

    .line 8990
    .end local v0    # "serial":I
    :sswitch_4e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8992
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8993
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8994
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8995
    .local v2, "audio":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->toggleRttAudioIndication(III)V

    .line 8996
    goto/16 :goto_1

    .line 8979
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "audio":I
    :sswitch_4f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8982
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8983
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8984
    .local v2, "result":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->rttModifyRequestResponse(III)V

    .line 8985
    goto/16 :goto_1

    .line 8967
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "result":I
    :sswitch_50
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8970
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8971
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8972
    .local v2, "lenOfString":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8973
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendRttText(IIILjava/lang/String;)V

    .line 8974
    goto/16 :goto_1

    .line 8956
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "lenOfString":I
    .end local v3    # "text":Ljava/lang/String;
    :sswitch_51
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8958
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8959
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8960
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8961
    .local v2, "newMode":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendRttModifyRequest(III)V

    .line 8962
    goto/16 :goto_1

    .line 8946
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "newMode":I
    :sswitch_52
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8948
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8949
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8950
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setRttMode(II)V

    .line 8951
    goto/16 :goto_1

    .line 8935
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_53
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8938
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8939
    .local v1, "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8940
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setVendorSetting(IILjava/lang/String;)V

    .line 8941
    goto/16 :goto_1

    .line 8924
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_54
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8926
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8927
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8928
    .local v1, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8929
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 8930
    goto/16 :goto_1

    .line 8914
    .end local v0    # "serial":I
    .end local v1    # "reqType":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_55
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8916
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioResponse;

    move-result-object v0

    .line 8917
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioIndication;

    move-result-object v1

    .line 8918
    .local v1, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioIndication;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsRcs(Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioIndication;)V

    .line 8919
    goto/16 :goto_1

    .line 8904
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioResponse;
    .end local v1    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRcsRadioIndication;
    :sswitch_56
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8906
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockResponse;

    move-result-object v0

    .line 8907
    .local v0, "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockIndication;

    move-result-object v1

    .line 8908
    .local v1, "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockIndication;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockIndication;)V

    .line 8909
    goto/16 :goto_1

    .line 8893
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockResponse;
    .end local v1    # "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISubsidyLockIndication;
    :sswitch_57
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8895
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8896
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8897
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8898
    .local v2, "reason":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->hangupWithReason(III)V

    .line 8899
    goto/16 :goto_1

    .line 8883
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "reason":I
    :sswitch_58
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8885
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8886
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8887
    .local v1, "state":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->notifyEPDGScreenState(II)V

    .line 8888
    goto/16 :goto_1

    .line 8873
    .end local v0    # "serial":I
    .end local v1    # "state":I
    :sswitch_59
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8875
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8876
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8877
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 8878
    goto/16 :goto_1

    .line 8862
    .end local v0    # "serial":I
    .end local v1    # "pwd":Ljava/lang/String;
    :sswitch_5a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8864
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8865
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8866
    .local v1, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8867
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 8868
    goto/16 :goto_1

    .line 8852
    .end local v0    # "serial":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_5b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8854
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8855
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8856
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setTxPowerStatus(II)V

    .line 8857
    goto/16 :goto_1

    .line 8843
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_5c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8846
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getLteReleaseVersion(I)V

    .line 8847
    goto/16 :goto_1

    .line 8833
    .end local v0    # "serial":I
    :sswitch_5d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8836
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8837
    .restart local v1    # "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setLteReleaseVersion(II)V

    .line 8838
    goto/16 :goto_1

    .line 8824
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_5e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8826
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8827
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->resetAllConnections(I)V

    .line 8828
    goto/16 :goto_1

    .line 8814
    .end local v0    # "serial":I
    :sswitch_5f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8816
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8817
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8818
    .local v1, "type":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->dataConnectionDetach(II)V

    .line 8819
    goto/16 :goto_1

    .line 8804
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_60
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8807
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8808
    .restart local v1    # "type":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->dataConnectionAttach(II)V

    .line 8809
    goto/16 :goto_1

    .line 8794
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_61
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8796
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8797
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8798
    .local v1, "featureId":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getImsCfgResourceCapValue(II)V

    .line 8799
    goto/16 :goto_1

    .line 8784
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    :sswitch_62
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8786
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8787
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8788
    .local v1, "configId":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getImsCfgProvisionValue(II)V

    .line 8789
    goto/16 :goto_1

    .line 8773
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    :sswitch_63
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8776
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8777
    .restart local v1    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8778
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 8779
    goto/16 :goto_1

    .line 8762
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_64
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8764
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8765
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8766
    .local v1, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8767
    .local v2, "network":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getImsCfgFeatureValue(III)V

    .line 8768
    goto/16 :goto_1

    .line 8749
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    .end local v2    # "network":I
    :sswitch_65
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8751
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8752
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8753
    .local v7, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8754
    .local v8, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8755
    .local v9, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8756
    .local v10, "isLast":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 8757
    goto/16 :goto_1

    .line 8739
    .end local v6    # "serial":I
    .end local v7    # "featureId":I
    .end local v8    # "network":I
    .end local v9    # "value":I
    .end local v10    # "isLast":I
    :sswitch_66
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8741
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8742
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8743
    .local v1, "enable":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsBearerNotification(II)V

    .line 8744
    goto/16 :goto_1

    .line 8730
    .end local v0    # "serial":I
    .end local v1    # "enable":I
    :sswitch_67
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8733
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getApcInfo(I)V

    .line 8734
    goto/16 :goto_1

    .line 8718
    .end local v0    # "serial":I
    :sswitch_68
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8721
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8722
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8723
    .local v2, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8724
    .local v3, "interval":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setApcMode(IIII)V

    .line 8725
    goto/16 :goto_1

    .line 8706
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "reportMode":I
    .end local v3    # "interval":I
    :sswitch_69
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8709
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8710
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8711
    .local v2, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8712
    .local v3, "pktloss":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWifiPingResult(IIII)V

    .line 8713
    goto/16 :goto_1

    .line 8691
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "latency":I
    .end local v3    # "pktloss":I
    :sswitch_6a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8694
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8695
    .local v9, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8696
    .local v10, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 8697
    .local v14, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 8698
    .local v15, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 8699
    .local v16, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 8700
    .local v17, "dstPort":I
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 8701
    goto/16 :goto_1

    .line 8681
    .end local v8    # "serial":I
    .end local v9    # "ifName":Ljava/lang/String;
    .end local v10    # "enable":Z
    .end local v14    # "srcIp":Ljava/lang/String;
    .end local v15    # "srcPort":I
    .end local v16    # "dstIp":Ljava/lang/String;
    .end local v17    # "dstPort":I
    :sswitch_6b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8683
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8684
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8685
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 8686
    goto/16 :goto_1

    .line 8671
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    :sswitch_6c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8674
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8675
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setLocationInfo(ILjava/util/ArrayList;)V

    .line 8676
    goto/16 :goto_1

    .line 8662
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_6d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8664
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8665
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->querySsacStatus(I)V

    .line 8666
    goto/16 :goto_1

    .line 8652
    .end local v0    # "serial":I
    :sswitch_6e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8654
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8655
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8656
    .local v1, "setting":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getWfcConfig(II)V

    .line 8657
    goto/16 :goto_1

    .line 8640
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    :sswitch_6f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8642
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8643
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8644
    .restart local v1    # "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8645
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8646
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWfcConfig(IILjava/lang/String;Ljava/lang/String;)V

    .line 8647
    goto/16 :goto_1

    .line 8630
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :sswitch_70
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8632
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8633
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8634
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWifiIpAddress(ILjava/util/ArrayList;)V

    .line 8635
    goto/16 :goto_1

    .line 8619
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_71
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8621
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8622
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8623
    .local v1, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8624
    .local v2, "snr":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWifiSignalLevel(III)V

    .line 8625
    goto/16 :goto_1

    .line 8609
    .end local v0    # "serial":I
    .end local v1    # "rssi":I
    .end local v2    # "snr":I
    :sswitch_72
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8611
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8612
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8613
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWifiAssociated(ILjava/util/ArrayList;)V

    .line 8614
    goto/16 :goto_1

    .line 8597
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_73
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8599
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8600
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8601
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8602
    .local v2, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8603
    .local v3, "isFlightModeOn":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 8604
    goto/16 :goto_1

    .line 8587
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "isWifiEnabled":I
    .end local v3    # "isFlightModeOn":I
    :sswitch_74
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8589
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8590
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8591
    .local v1, "vdp":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setVoiceDomainPreference(II)V

    .line 8592
    goto/16 :goto_1

    .line 8577
    .end local v0    # "serial":I
    .end local v1    # "vdp":I
    :sswitch_75
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8580
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8581
    .local v1, "type":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setRemoveRestrictEutranMode(II)V

    .line 8582
    goto/16 :goto_1

    .line 8567
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_76
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8570
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8571
    .local v1, "apn":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 8572
    goto/16 :goto_1

    .line 8557
    .end local v0    # "serial":I
    .end local v1    # "apn":Ljava/lang/String;
    :sswitch_77
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8560
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8561
    .local v1, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 8562
    goto/16 :goto_1

    .line 8548
    .end local v0    # "serial":I
    .end local v1    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_78
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8550
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8551
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->restartRILD(I)V

    .line 8552
    goto/16 :goto_1

    .line 8538
    .end local v0    # "serial":I
    :sswitch_79
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8541
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8542
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 8543
    goto/16 :goto_1

    .line 8528
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_7a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciResponse;

    move-result-object v0

    .line 8531
    .local v0, "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciIndication;

    move-result-object v1

    .line 8532
    .local v1, "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciIndication;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciIndication;)V

    .line 8533
    goto/16 :goto_1

    .line 8518
    .end local v0    # "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciResponse;
    .end local v1    # "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IAtciIndication;
    :sswitch_7b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8521
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8522
    .local v1, "resultCode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 8523
    goto/16 :goto_1

    .line 8508
    .end local v0    # "serial":I
    .end local v1    # "resultCode":I
    :sswitch_7c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8511
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8512
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setTrm(II)V

    .line 8513
    goto/16 :goto_1

    .line 8496
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_7d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8498
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8499
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8500
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8501
    .local v2, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8502
    .local v3, "param2":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setFdMode(IIII)V

    .line 8503
    goto/16 :goto_1

    .line 8484
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "param1":I
    .end local v3    # "param2":I
    :sswitch_7e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8487
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8488
    .local v1, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8489
    .local v2, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8490
    .local v3, "nAct":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 8491
    goto/16 :goto_1

    .line 8475
    .end local v0    # "serial":I
    .end local v1    # "index":I
    .end local v2    # "numeric":Ljava/lang/String;
    .end local v3    # "nAct":I
    :sswitch_7f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8477
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8478
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCurrentPOLList(I)V

    .line 8479
    goto/16 :goto_1

    .line 8466
    .end local v0    # "serial":I
    :sswitch_80
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8468
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8469
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getPOLCapability(I)V

    .line 8470
    goto/16 :goto_1

    .line 8456
    .end local v0    # "serial":I
    :sswitch_81
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8458
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8459
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8460
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getRxTestResult(II)V

    .line 8461
    goto/16 :goto_1

    .line 8446
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_82
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8449
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8450
    .local v1, "antType":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setRxTestConfig(II)V

    .line 8451
    goto/16 :goto_1

    .line 8436
    .end local v0    # "serial":I
    .end local v1    # "antType":I
    :sswitch_83
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8438
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8439
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8440
    .local v1, "sleepDuration":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setBgsrchDeltaSleepTimer(II)V

    .line 8441
    goto/16 :goto_1

    .line 8426
    .end local v0    # "serial":I
    .end local v1    # "sleepDuration":I
    :sswitch_84
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8429
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8430
    .local v1, "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSearchRat(ILjava/util/ArrayList;)V

    .line 8431
    goto/16 :goto_1

    .line 8413
    .end local v0    # "serial":I
    .end local v1    # "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_85
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8416
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8417
    .local v7, "operation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8418
    .local v8, "plmn_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8419
    .local v9, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 8420
    .local v10, "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSearchStoredFreqInfo(IIIILjava/util/ArrayList;)V

    .line 8421
    goto/16 :goto_1

    .line 8403
    .end local v6    # "serial":I
    .end local v7    # "operation":I
    .end local v8    # "plmn_id":I
    .end local v9    # "rat":I
    .end local v10    # "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_86
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8405
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8406
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8407
    .local v1, "limitpower":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setTxPower(II)V

    .line 8408
    goto/16 :goto_1

    .line 8390
    .end local v0    # "serial":I
    .end local v1    # "limitpower":I
    :sswitch_87
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8392
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8393
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 8394
    .local v7, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8395
    .local v8, "T1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8396
    .local v9, "P1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8397
    .local v10, "T2":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->enableSCGfailure(IZIII)V

    .line 8398
    goto/16 :goto_1

    .line 8379
    .end local v6    # "serial":I
    .end local v7    # "enable":Z
    .end local v8    # "T1":I
    .end local v9    # "P1":I
    .end local v10    # "T2":I
    :sswitch_88
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8381
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8382
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8383
    .local v1, "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8384
    .local v2, "threshBound":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->cfgB1offset(III)V

    .line 8385
    goto/16 :goto_1

    .line 8368
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "threshBound":I
    :sswitch_89
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8370
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8371
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8372
    .restart local v1    # "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8373
    .restart local v2    # "threshBound":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->cfgA2offset(III)V

    .line 8374
    goto/16 :goto_1

    .line 8353
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "threshBound":I
    :sswitch_8a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8355
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8356
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8357
    .local v9, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8358
    .local v10, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 8359
    .local v14, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 8360
    .local v15, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 8361
    .local v16, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 8362
    .local v17, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setServiceStateToModem(IIIIIII)V

    .line 8363
    goto/16 :goto_1

    .line 8343
    .end local v8    # "serial":I
    .end local v9    # "voiceRegState":I
    .end local v10    # "dataRegState":I
    .end local v14    # "voiceRoamingType":I
    .end local v15    # "dataRoamingType":I
    .end local v16    # "rilVoiceRegState":I
    .end local v17    # "rilDataRegState":I
    :sswitch_8b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8345
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8346
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8347
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 8348
    goto/16 :goto_1

    .line 8334
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_8c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8336
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8337
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 8338
    goto/16 :goto_1

    .line 8322
    .end local v0    # "serial":I
    :sswitch_8d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8325
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8326
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8327
    .local v2, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8328
    .local v3, "csgId":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8329
    goto/16 :goto_1

    .line 8313
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    .end local v3    # "csgId":Ljava/lang/String;
    :sswitch_8e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8316
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->abortFemtocellList(I)V

    .line 8317
    goto/16 :goto_1

    .line 8304
    .end local v0    # "serial":I
    :sswitch_8f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8307
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getFemtocellList(I)V

    .line 8308
    goto/16 :goto_1

    .line 8295
    .end local v0    # "serial":I
    :sswitch_90
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8297
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8298
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->cancelAvailableNetworks(I)V

    .line 8299
    goto/16 :goto_1

    .line 8286
    .end local v0    # "serial":I
    :sswitch_91
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8289
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 8290
    goto/16 :goto_1

    .line 8277
    .end local v0    # "serial":I
    :sswitch_92
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8280
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getAvailableNetworksWithAct(I)V

    .line 8281
    goto/16 :goto_1

    .line 8265
    .end local v0    # "serial":I
    :sswitch_93
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8268
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8269
    .restart local v1    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8270
    .restart local v2    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8271
    .local v3, "mode":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8272
    goto/16 :goto_1

    .line 8256
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    .end local v3    # "mode":Ljava/lang/String;
    :sswitch_94
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8259
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getSmsRuimMemoryStatus(I)V

    .line 8260
    goto/16 :goto_1

    .line 8245
    .end local v0    # "serial":I
    :sswitch_95
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8247
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8248
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8249
    .local v1, "applyType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8250
    .local v2, "modemType":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->modifyModemType(III)V

    .line 8251
    goto/16 :goto_1

    .line 8235
    .end local v0    # "serial":I
    .end local v1    # "applyType":I
    .end local v2    # "modemType":I
    :sswitch_96
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8237
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8238
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8239
    .local v1, "sessionId":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResumeRegistration(II)V

    .line 8240
    goto/16 :goto_1

    .line 8225
    .end local v0    # "serial":I
    .end local v1    # "sessionId":I
    :sswitch_97
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8227
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8228
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8229
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 8230
    goto/16 :goto_1

    .line 8215
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_98
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8217
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8218
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8219
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 8220
    goto/16 :goto_1

    .line 8204
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_99
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8206
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8207
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 8208
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v12}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8209
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 8210
    goto/16 :goto_1

    .line 8193
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_9a
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8195
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8196
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 8197
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8198
    .local v2, "cause":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 8199
    goto/16 :goto_1

    .line 8182
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "cause":I
    :sswitch_9b
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8185
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 8186
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v12}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8187
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 8188
    goto/16 :goto_1

    .line 8173
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_9c
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8175
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8176
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getGsmBroadcastActivation(I)V

    .line 8177
    goto/16 :goto_1

    .line 8164
    .end local v0    # "serial":I
    :sswitch_9d
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8167
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getGsmBroadcastLangs(I)V

    .line 8168
    goto/16 :goto_1

    .line 8154
    .end local v0    # "serial":I
    :sswitch_9e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8156
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8157
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8158
    .local v1, "langs":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 8159
    goto/16 :goto_1

    .line 8143
    .end local v0    # "serial":I
    .end local v1    # "langs":Ljava/lang/String;
    :sswitch_9f
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8145
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8146
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8147
    .local v1, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8148
    .local v2, "serialId":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->removeCbMsg(III)V

    .line 8149
    goto/16 :goto_1

    .line 8133
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    .end local v2    # "serialId":I
    :sswitch_a0
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8136
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8137
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setEtws(II)V

    .line 8138
    goto/16 :goto_1

    .line 8124
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_a1
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8126
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8127
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getSmsMemStatus(I)V

    .line 8128
    goto/16 :goto_1

    .line 8113
    .end local v0    # "serial":I
    :sswitch_a2
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8115
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8116
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;-><init>()V

    .line 8117
    .local v1, "message":Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8118
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSmsParameters(ILvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;)V

    .line 8119
    goto/16 :goto_1

    .line 8104
    .end local v0    # "serial":I
    .end local v1    # "message":Lvendor/mediatek/hardware/mtkradioex/V3_0/SmsParams;
    :sswitch_a3
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8107
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getSmsParameters(I)V

    .line 8108
    goto/16 :goto_1

    .line 8090
    .end local v0    # "serial":I
    :sswitch_a4
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8092
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8093
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8094
    .local v8, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8095
    .local v9, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8096
    .local v10, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 8097
    .local v14, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v15

    .line 8098
    .local v15, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 8099
    goto/16 :goto_1

    .line 8078
    .end local v7    # "serial":I
    .end local v8    # "transactionId":I
    .end local v9    # "eventId":I
    .end local v10    # "result":I
    .end local v14    # "dataLength":I
    .end local v15    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_a5
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8080
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8081
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8082
    .local v1, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8083
    .local v2, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8084
    .local v3, "simType":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendVsimNotification(IIII)V

    .line 8085
    goto/16 :goto_1

    .line 8067
    .end local v0    # "serial":I
    .end local v1    # "transactionId":I
    .end local v2    # "eventId":I
    .end local v3    # "simType":I
    :sswitch_a6
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8070
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8071
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8072
    .local v2, "type":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 8073
    goto/16 :goto_1

    .line 8052
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    .end local v2    # "type":I
    :sswitch_a7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8054
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8055
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8056
    .local v9, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8057
    .local v10, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 8058
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 8059
    .local v15, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 8060
    .local v16, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 8061
    .local v17, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8062
    goto/16 :goto_1

    .line 8042
    .end local v8    # "serial":I
    .end local v9    # "category":I
    .end local v10    # "lockop":I
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "data_imsi":Ljava/lang/String;
    .end local v16    # "gid1":Ljava/lang/String;
    .end local v17    # "gid2":Ljava/lang/String;
    :sswitch_a8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8044
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8045
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8046
    .local v1, "category":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryNetworkLock(II)V

    .line 8047
    goto/16 :goto_1

    .line 8031
    .end local v0    # "serial":I
    .end local v1    # "category":I
    :sswitch_a9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8033
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8034
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/SimAuthStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SimAuthStructure;-><init>()V

    .line 8035
    .local v1, "simAuth":Lvendor/mediatek/hardware/mtkradioex/V3_0/SimAuthStructure;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8036
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/mtkradioex/V3_0/SimAuthStructure;)V

    .line 8037
    goto/16 :goto_1

    .line 8022
    .end local v0    # "serial":I
    .end local v1    # "simAuth":Lvendor/mediatek/hardware/mtkradioex/V3_0/SimAuthStructure;
    :sswitch_aa
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8024
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8025
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCurrentUiccCardProvisioningStatus(I)V

    .line 8026
    goto/16 :goto_1

    .line 8013
    .end local v0    # "serial":I
    :sswitch_ab
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8015
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8016
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->deactivateUiccCard(I)V

    .line 8017
    goto/16 :goto_1

    .line 8004
    .end local v0    # "serial":I
    :sswitch_ac
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8006
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8007
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->activateUiccCard(I)V

    .line 8008
    goto/16 :goto_1

    .line 7994
    .end local v0    # "serial":I
    :sswitch_ad
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7997
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7998
    .local v1, "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setSimPower(II)V

    .line 7999
    goto/16 :goto_1

    .line 7985
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_ae
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7988
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getIccid(I)V

    .line 7989
    goto/16 :goto_1

    .line 7976
    .end local v0    # "serial":I
    :sswitch_af
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7978
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7979
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getATR(I)V

    .line 7980
    goto/16 :goto_1

    .line 7966
    .end local v0    # "serial":I
    :sswitch_b0
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7968
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7969
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7970
    .restart local v1    # "mode":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->triggerModeSwitchByEcc(II)V

    .line 7971
    goto/16 :goto_1

    .line 7956
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_b1
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7958
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7959
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7960
    .local v1, "isOn":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setModemPower(IZ)V

    .line 7961
    goto/16 :goto_1

    .line 7946
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_b2
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7948
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7949
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7950
    .local v1, "ready":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setPhonebookReady(II)V

    .line 7951
    goto/16 :goto_1

    .line 7935
    .end local v0    # "serial":I
    .end local v1    # "ready":I
    :sswitch_b3
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7938
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7939
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7940
    .local v2, "endIndex":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readUPBAasList(III)V

    .line 7941
    goto/16 :goto_1

    .line 7924
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :sswitch_b4
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7926
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7927
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7928
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7929
    .local v2, "fileIndex":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readUPBAnrEntry(III)V

    .line 7930
    goto/16 :goto_1

    .line 7913
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_b5
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7915
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7916
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7917
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7918
    .restart local v2    # "fileIndex":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readUPBSneEntry(III)V

    .line 7919
    goto/16 :goto_1

    .line 7902
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_b6
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7904
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7905
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7906
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7907
    .restart local v2    # "fileIndex":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readUPBEmailEntry(III)V

    .line 7908
    goto/16 :goto_1

    .line 7891
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_b7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7893
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7894
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7895
    .local v1, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7896
    .restart local v2    # "fileIndex":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryUPBAvailable(III)V

    .line 7897
    goto/16 :goto_1

    .line 7880
    .end local v0    # "serial":I
    .end local v1    # "eftype":I
    .end local v2    # "fileIndex":I
    :sswitch_b8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7882
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7883
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;-><init>()V

    .line 7884
    .local v1, "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7885
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;)V

    .line 7886
    goto/16 :goto_1

    .line 7869
    .end local v0    # "serial":I
    .end local v1    # "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryExt;
    :sswitch_b9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7871
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7872
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7873
    .local v1, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7874
    .local v2, "index2":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readPhoneBookEntryExt(III)V

    .line 7875
    goto/16 :goto_1

    .line 7858
    .end local v0    # "serial":I
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    :sswitch_ba
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7860
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7861
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7862
    .local v1, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7863
    .local v2, "password":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 7864
    goto/16 :goto_1

    .line 7849
    .end local v0    # "serial":I
    .end local v1    # "storage":Ljava/lang/String;
    .end local v2    # "password":Ljava/lang/String;
    :sswitch_bb
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7852
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getPhoneBookMemStorage(I)V

    .line 7853
    goto/16 :goto_1

    .line 7840
    .end local v0    # "serial":I
    :sswitch_bc
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7842
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7843
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getPhoneBookStringsLength(I)V

    .line 7844
    goto/16 :goto_1

    .line 7829
    .end local v0    # "serial":I
    :sswitch_bd
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7831
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7832
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7833
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7834
    .local v2, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 7835
    goto/16 :goto_1

    .line 7819
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_be
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7822
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7823
    .restart local v1    # "adnIndex":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readUPBGrpEntry(II)V

    .line 7824
    goto/16 :goto_1

    .line 7808
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    :sswitch_bf
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7810
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7811
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7812
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7813
    .local v2, "endIndex":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readUPBGasList(III)V

    .line 7814
    goto/16 :goto_1

    .line 7796
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :sswitch_c0
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7799
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7800
    .local v1, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7801
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7802
    .local v3, "entryIndex":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->deleteUPBEntry(IIII)V

    .line 7803
    goto/16 :goto_1

    .line 7786
    .end local v0    # "serial":I
    .end local v1    # "entryType":I
    .end local v2    # "adnIndex":I
    .end local v3    # "entryIndex":I
    :sswitch_c1
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7789
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7790
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 7791
    goto/16 :goto_1

    .line 7777
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c2
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7780
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryUPBCapability(I)V

    .line 7781
    goto/16 :goto_1

    .line 7765
    .end local v0    # "serial":I
    :sswitch_c3
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7767
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7768
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7769
    .local v1, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7770
    .local v2, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7771
    .local v3, "eIndex":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->readPhbEntry(IIII)V

    .line 7772
    goto/16 :goto_1

    .line 7754
    .end local v0    # "serial":I
    .end local v1    # "type":I
    .end local v2    # "bIndex":I
    .end local v3    # "eIndex":I
    :sswitch_c4
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7757
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;-><init>()V

    .line 7758
    .local v1, "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7759
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->writePhbEntry(ILvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;)V

    .line 7760
    goto/16 :goto_1

    .line 7744
    .end local v0    # "serial":I
    .end local v1    # "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V3_0/PhbEntryStructure;
    :sswitch_c5
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7747
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7748
    .local v1, "type":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryPhbStorageInfo(II)V

    .line 7749
    goto/16 :goto_1

    .line 7735
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_c6
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7738
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getCallSubAddress(I)V

    .line 7739
    goto/16 :goto_1

    .line 7725
    .end local v0    # "serial":I
    :sswitch_c7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7727
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7728
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7729
    .local v1, "enable":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setCallSubAddress(IZ)V

    .line 7730
    goto/16 :goto_1

    .line 7716
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_c8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7719
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getEccNum(I)V

    .line 7720
    goto/16 :goto_1

    .line 7705
    .end local v0    # "serial":I
    :sswitch_c9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7707
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7708
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7709
    .local v1, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7710
    .local v2, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 7711
    goto/16 :goto_1

    .line 7692
    .end local v0    # "serial":I
    .end local v1    # "ecc_list_with_card":Ljava/lang/String;
    .end local v2    # "ecc_list_no_card":Ljava/lang/String;
    :sswitch_ca
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7695
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 7696
    .local v7, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7697
    .local v8, "enable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7698
    .local v9, "airplaneMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7699
    .local v10, "imsReg":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setEccMode(ILjava/lang/String;III)V

    .line 7700
    goto/16 :goto_1

    .line 7679
    .end local v6    # "serial":I
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "enable":I
    .end local v9    # "airplaneMode":I
    .end local v10    # "imsReg":I
    :sswitch_cb
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7682
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7683
    .local v7, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7684
    .local v8, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7685
    .local v9, "seqNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7686
    .local v10, "cause":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setCallIndication(IIIII)V

    .line 7687
    goto/16 :goto_1

    .line 7670
    .end local v6    # "serial":I
    .end local v7    # "mode":I
    .end local v8    # "callId":I
    .end local v9    # "seqNumber":I
    .end local v10    # "cause":I
    :sswitch_cc
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7673
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->hangupAll(I)V

    .line 7674
    goto/16 :goto_1

    .line 7660
    .end local v0    # "serial":I
    :sswitch_cd
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7663
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7664
    .local v1, "userAgent":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 7665
    goto/16 :goto_1

    .line 7651
    .end local v0    # "serial":I
    .end local v1    # "userAgent":Ljava/lang/String;
    :sswitch_ce
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7653
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7654
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->resetSuppServ(I)V

    .line 7655
    goto/16 :goto_1

    .line 7642
    .end local v0    # "serial":I
    :sswitch_cf
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7644
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7645
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getXcapStatus(I)V

    .line 7646
    goto/16 :goto_1

    .line 7633
    .end local v0    # "serial":I
    :sswitch_d0
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7636
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->cancelUssi(I)V

    .line 7637
    goto/16 :goto_1

    .line 7623
    .end local v0    # "serial":I
    :sswitch_d1
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7625
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7626
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7627
    .local v1, "ussiString":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendUssi(ILjava/lang/String;)V

    .line 7628
    goto/16 :goto_1

    .line 7610
    .end local v0    # "serial":I
    .end local v1    # "ussiString":Ljava/lang/String;
    :sswitch_d2
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7613
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 7614
    .local v7, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 7615
    .local v8, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 7616
    .local v9, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7617
    .local v10, "netId":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 7618
    goto/16 :goto_1

    .line 7599
    .end local v6    # "serial":I
    .end local v7    # "nafFqdn":Ljava/lang/String;
    .end local v8    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v9    # "forceRun":Z
    .end local v10    # "netId":I
    :sswitch_d3
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7601
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7602
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;-><init>()V

    .line 7603
    .local v1, "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7604
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;)V

    .line 7605
    goto/16 :goto_1

    .line 7588
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    :sswitch_d4
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7591
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;-><init>()V

    .line 7592
    .restart local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7593
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;)V

    .line 7594
    goto/16 :goto_1

    .line 7578
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    :sswitch_d5
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7580
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7581
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7582
    .local v1, "colrEnable":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setColr(II)V

    .line 7583
    goto/16 :goto_1

    .line 7568
    .end local v0    # "serial":I
    .end local v1    # "colrEnable":I
    :sswitch_d6
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7571
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7572
    .local v1, "colpEnable":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setColp(II)V

    .line 7573
    goto/16 :goto_1

    .line 7558
    .end local v0    # "serial":I
    .end local v1    # "colpEnable":I
    :sswitch_d7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7561
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7562
    .local v1, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendCnap(ILjava/lang/String;)V

    .line 7563
    goto/16 :goto_1

    .line 7549
    .end local v0    # "serial":I
    .end local v1    # "cnapssMessage":Ljava/lang/String;
    :sswitch_d8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7552
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getColr(I)V

    .line 7553
    goto/16 :goto_1

    .line 7540
    .end local v0    # "serial":I
    :sswitch_d9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7542
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7543
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getColp(I)V

    .line 7544
    goto/16 :goto_1

    .line 7530
    .end local v0    # "serial":I
    :sswitch_da
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7532
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7533
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7534
    .local v1, "clipEnable":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setClip(II)V

    .line 7535
    goto/16 :goto_1

    .line 7517
    .end local v0    # "serial":I
    .end local v1    # "clipEnable":I
    :sswitch_db
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7519
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7520
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 7521
    .local v7, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 7522
    .local v8, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 7523
    .local v9, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 7524
    .local v10, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7525
    goto/16 :goto_1

    .line 7507
    .end local v6    # "serial":I
    .end local v7    # "facility":Ljava/lang/String;
    .end local v8    # "oldPassword":Ljava/lang/String;
    .end local v9    # "newPassword":Ljava/lang/String;
    .end local v10    # "cfmPassword":Ljava/lang/String;
    :sswitch_dc
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7509
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7510
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7511
    .local v1, "phoneId":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getRoamingEnable(II)V

    .line 7512
    goto/16 :goto_1

    .line 7497
    .end local v0    # "serial":I
    .end local v1    # "phoneId":I
    :sswitch_dd
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7499
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7500
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7501
    .local v1, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 7502
    goto/16 :goto_1

    .line 7487
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_de
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7489
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7490
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7491
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 7492
    goto/16 :goto_1

    .line 7478
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/lang/String;
    :sswitch_df
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7480
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7481
    .restart local v0    # "serial":I
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsRegistrationReport(I)V

    .line 7482
    goto/16 :goto_1

    .line 7467
    .end local v0    # "serial":I
    :sswitch_e0
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7470
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7471
    .local v1, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7472
    .local v2, "isVideoCall":Z
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 7473
    goto/16 :goto_1

    .line 7455
    .end local v0    # "serial":I
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "isVideoCall":Z
    :sswitch_e1
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7458
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7459
    .local v1, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7460
    .local v2, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7461
    .local v3, "timer":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsRtpReport(IIII)V

    .line 7462
    goto/16 :goto_1

    .line 7443
    .end local v0    # "serial":I
    .end local v1    # "pdnId":I
    .end local v2    # "networkId":I
    .end local v3    # "timer":I
    :sswitch_e2
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7446
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7447
    .local v1, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7448
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7449
    .local v3, "status":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->imsBearerStateConfirm(IIII)V

    .line 7450
    goto/16 :goto_1

    .line 7433
    .end local v0    # "serial":I
    .end local v1    # "aid":I
    .end local v2    # "action":I
    .end local v3    # "status":I
    :sswitch_e3
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7435
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7436
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7437
    .local v1, "callId":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->forceReleaseCall(II)V

    .line 7438
    goto/16 :goto_1

    .line 7422
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    :sswitch_e4
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7425
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 7426
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v12}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7427
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 7428
    goto/16 :goto_1

    .line 7412
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_e5
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7414
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7415
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7416
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 7417
    goto/16 :goto_1

    .line 7402
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_e6
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7404
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7405
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7406
    .restart local v1    # "address":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 7407
    goto/16 :goto_1

    .line 7390
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_e7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7392
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7393
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7394
    .local v1, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7395
    .local v2, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7396
    .local v3, "type":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 7397
    goto/16 :goto_1

    .line 7379
    .end local v0    # "serial":I
    .end local v1    # "keys":Ljava/lang/String;
    .end local v2    # "values":Ljava/lang/String;
    .end local v3    # "type":I
    :sswitch_e8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7381
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7382
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;-><init>()V

    .line 7383
    .local v1, "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;
    invoke-virtual {v1, v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7384
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;)V

    .line 7385
    goto/16 :goto_1

    .line 7369
    .end local v0    # "serial":I
    .end local v1    # "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;
    :sswitch_e9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7371
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7372
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7373
    .local v1, "wfcPreference":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setWfcProfile(II)V

    .line 7374
    goto/16 :goto_1

    .line 7356
    .end local v0    # "serial":I
    .end local v1    # "wfcPreference":I
    :sswitch_ea
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7358
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7359
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7360
    .local v7, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7361
    .local v8, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 7362
    .local v9, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7363
    .local v10, "callId":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    .line 7364
    goto/16 :goto_1

    .line 7345
    .end local v6    # "serial":I
    .end local v7    # "controlType":I
    .end local v8    # "confCallId":I
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "callId":I
    :sswitch_eb
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7347
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7348
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7349
    .local v1, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7350
    .local v2, "provisionValue":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 7351
    goto/16 :goto_1

    .line 7335
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    .end local v2    # "provisionValue":Ljava/lang/String;
    :sswitch_ec
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7338
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7339
    .restart local v1    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 7340
    goto/16 :goto_1

    .line 7320
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    :sswitch_ed
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7322
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7323
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 7324
    .local v9, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 7325
    .local v10, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 7326
    .local v14, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 7327
    .local v15, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 7328
    .local v16, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 7329
    .local v17, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImscfg(IZZZZZZ)V

    .line 7330
    goto/16 :goto_1

    .line 7310
    .end local v8    # "serial":I
    .end local v9    # "volteEnable":Z
    .end local v10    # "vilteEnable":Z
    .end local v14    # "vowifiEnable":Z
    .end local v15    # "viwifiEnable":Z
    .end local v16    # "smsEnable":Z
    .end local v17    # "eimsEnable":Z
    :sswitch_ee
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7312
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7313
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7314
    .local v1, "isOn":Z
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setImsEnable(IZ)V

    .line 7315
    goto/16 :goto_1

    .line 7300
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_ef
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7302
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7303
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7304
    .local v1, "cause":I
    invoke-virtual {v11, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->imsDeregNotification(II)V

    .line 7305
    goto/16 :goto_1

    .line 7289
    .end local v0    # "serial":I
    .end local v1    # "cause":I
    :sswitch_f0
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7292
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7293
    .local v1, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7294
    .local v2, "callId":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->controlCall(III)V

    .line 7295
    goto/16 :goto_1

    .line 7278
    .end local v0    # "serial":I
    .end local v1    # "controlType":I
    .end local v2    # "callId":I
    :sswitch_f1
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7281
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7282
    .local v1, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7283
    .local v2, "type":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 7284
    goto/16 :goto_1

    .line 7267
    .end local v0    # "serial":I
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "type":I
    :sswitch_f2
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7269
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7270
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7271
    .local v1, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7272
    .local v2, "callId":I
    invoke-virtual {v11, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->videoCallAccept(III)V

    .line 7273
    goto/16 :goto_1

    .line 7255
    .end local v0    # "serial":I
    .end local v1    # "videoMode":I
    .end local v2    # "callId":I
    :sswitch_f3
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioResponse;

    move-result-object v0

    .line 7258
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioIndication;

    move-result-object v2

    .line 7259
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsRsu(Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioIndication;)V

    .line 7260
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7262
    goto/16 :goto_1

    .line 7244
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IRsuRadioIndication;
    :sswitch_f4
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7246
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ICapRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ICapRadioResponse;

    move-result-object v0

    .line 7247
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/ICapRadioResponse;
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsCap(Lvendor/mediatek/hardware/mtkradioex/V3_0/ICapRadioResponse;)V

    .line 7248
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7249
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7250
    goto/16 :goto_1

    .line 7233
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/ICapRadioResponse;
    :sswitch_f5
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7235
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse;

    move-result-object v0

    .line 7236
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse;
    invoke-virtual {v11, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsAssist(Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse;)V

    .line 7237
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7238
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7239
    goto/16 :goto_1

    .line 7221
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IAssistRadioResponse;
    :sswitch_f6
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7223
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioResponse;

    move-result-object v0

    .line 7224
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioIndication;

    move-result-object v2

    .line 7225
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsEm(Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioIndication;)V

    .line 7226
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7227
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7228
    goto/16 :goto_1

    .line 7209
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IEmRadioIndication;
    :sswitch_f7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7211
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioResponse;

    move-result-object v0

    .line 7212
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioIndication;

    move-result-object v2

    .line 7213
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioIndication;)V

    .line 7214
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7215
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7216
    goto :goto_1

    .line 7197
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/ISERadioIndication;
    :sswitch_f8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse;

    move-result-object v0

    .line 7200
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioIndication;

    move-result-object v2

    .line 7201
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioIndication;)V

    .line 7202
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7203
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7204
    goto :goto_1

    .line 7185
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioIndication;
    :sswitch_f9
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7187
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;

    move-result-object v0

    .line 7188
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;

    move-result-object v2

    .line 7189
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;)V

    .line 7190
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7191
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7192
    goto :goto_1

    .line 7173
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;
    :sswitch_fa
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7175
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse;

    move-result-object v0

    .line 7176
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication;

    move-result-object v2

    .line 7177
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication;
    invoke-virtual {v11, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication;)V

    .line 7178
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7179
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7180
    goto :goto_1

    .line 7165
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication;
    :sswitch_fb
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7167
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->responseAcknowledgementMtk()V

    .line 7168
    nop

    .line 9838
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_fb
        0x2 -> :sswitch_fa
        0x3 -> :sswitch_f9
        0x4 -> :sswitch_f8
        0x5 -> :sswitch_f7
        0x6 -> :sswitch_f6
        0x7 -> :sswitch_f5
        0x8 -> :sswitch_f4
        0x9 -> :sswitch_f3
        0xa -> :sswitch_f2
        0xb -> :sswitch_f1
        0xc -> :sswitch_f0
        0xd -> :sswitch_ef
        0xe -> :sswitch_ee
        0xf -> :sswitch_ed
        0x10 -> :sswitch_ec
        0x11 -> :sswitch_eb
        0x12 -> :sswitch_ea
        0x13 -> :sswitch_e9
        0x14 -> :sswitch_e8
        0x15 -> :sswitch_e7
        0x16 -> :sswitch_e6
        0x17 -> :sswitch_e5
        0x18 -> :sswitch_e4
        0x19 -> :sswitch_e3
        0x1a -> :sswitch_e2
        0x1b -> :sswitch_e1
        0x1c -> :sswitch_e0
        0x1d -> :sswitch_df
        0x1e -> :sswitch_de
        0x1f -> :sswitch_dd
        0x20 -> :sswitch_dc
        0x21 -> :sswitch_db
        0x22 -> :sswitch_da
        0x23 -> :sswitch_d9
        0x24 -> :sswitch_d8
        0x25 -> :sswitch_d7
        0x26 -> :sswitch_d6
        0x27 -> :sswitch_d5
        0x28 -> :sswitch_d4
        0x29 -> :sswitch_d3
        0x2a -> :sswitch_d2
        0x2b -> :sswitch_d1
        0x2c -> :sswitch_d0
        0x2d -> :sswitch_cf
        0x2e -> :sswitch_ce
        0x2f -> :sswitch_cd
        0x30 -> :sswitch_cc
        0x31 -> :sswitch_cb
        0x32 -> :sswitch_ca
        0x33 -> :sswitch_c9
        0x34 -> :sswitch_c8
        0x35 -> :sswitch_c7
        0x36 -> :sswitch_c6
        0x37 -> :sswitch_c5
        0x38 -> :sswitch_c4
        0x39 -> :sswitch_c3
        0x3a -> :sswitch_c2
        0x3b -> :sswitch_c1
        0x3c -> :sswitch_c0
        0x3d -> :sswitch_bf
        0x3e -> :sswitch_be
        0x3f -> :sswitch_bd
        0x40 -> :sswitch_bc
        0x41 -> :sswitch_bb
        0x42 -> :sswitch_ba
        0x43 -> :sswitch_b9
        0x44 -> :sswitch_b8
        0x45 -> :sswitch_b7
        0x46 -> :sswitch_b6
        0x47 -> :sswitch_b5
        0x48 -> :sswitch_b4
        0x49 -> :sswitch_b3
        0x4a -> :sswitch_b2
        0x4b -> :sswitch_b1
        0x4c -> :sswitch_b0
        0x4d -> :sswitch_af
        0x4e -> :sswitch_ae
        0x4f -> :sswitch_ad
        0x50 -> :sswitch_ac
        0x51 -> :sswitch_ab
        0x52 -> :sswitch_aa
        0x53 -> :sswitch_a9
        0x54 -> :sswitch_a8
        0x55 -> :sswitch_a7
        0x56 -> :sswitch_a6
        0x57 -> :sswitch_a5
        0x58 -> :sswitch_a4
        0x59 -> :sswitch_a3
        0x5a -> :sswitch_a2
        0x5b -> :sswitch_a1
        0x5c -> :sswitch_a0
        0x5d -> :sswitch_9f
        0x5e -> :sswitch_9e
        0x5f -> :sswitch_9d
        0x60 -> :sswitch_9c
        0x61 -> :sswitch_9b
        0x62 -> :sswitch_9a
        0x63 -> :sswitch_99
        0x64 -> :sswitch_98
        0x65 -> :sswitch_97
        0x66 -> :sswitch_96
        0x67 -> :sswitch_95
        0x68 -> :sswitch_94
        0x69 -> :sswitch_93
        0x6a -> :sswitch_92
        0x6b -> :sswitch_91
        0x6c -> :sswitch_90
        0x6d -> :sswitch_8f
        0x6e -> :sswitch_8e
        0x6f -> :sswitch_8d
        0x70 -> :sswitch_8c
        0x71 -> :sswitch_8b
        0x72 -> :sswitch_8a
        0x73 -> :sswitch_89
        0x74 -> :sswitch_88
        0x75 -> :sswitch_87
        0x76 -> :sswitch_86
        0x77 -> :sswitch_85
        0x78 -> :sswitch_84
        0x79 -> :sswitch_83
        0x7a -> :sswitch_82
        0x7b -> :sswitch_81
        0x7c -> :sswitch_80
        0x7d -> :sswitch_7f
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7d
        0x80 -> :sswitch_7c
        0x81 -> :sswitch_7b
        0x82 -> :sswitch_7a
        0x83 -> :sswitch_79
        0x84 -> :sswitch_78
        0x85 -> :sswitch_77
        0x86 -> :sswitch_76
        0x87 -> :sswitch_75
        0x88 -> :sswitch_74
        0x89 -> :sswitch_73
        0x8a -> :sswitch_72
        0x8b -> :sswitch_71
        0x8c -> :sswitch_70
        0x8d -> :sswitch_6f
        0x8e -> :sswitch_6e
        0x8f -> :sswitch_6d
        0x90 -> :sswitch_6c
        0x91 -> :sswitch_6b
        0x92 -> :sswitch_6a
        0x93 -> :sswitch_69
        0x94 -> :sswitch_68
        0x95 -> :sswitch_67
        0x96 -> :sswitch_66
        0x97 -> :sswitch_65
        0x98 -> :sswitch_64
        0x99 -> :sswitch_63
        0x9a -> :sswitch_62
        0x9b -> :sswitch_61
        0x9c -> :sswitch_60
        0x9d -> :sswitch_5f
        0x9e -> :sswitch_5e
        0x9f -> :sswitch_5d
        0xa0 -> :sswitch_5c
        0xa1 -> :sswitch_5b
        0xa2 -> :sswitch_5a
        0xa3 -> :sswitch_59
        0xa4 -> :sswitch_58
        0xa5 -> :sswitch_57
        0xa6 -> :sswitch_56
        0xa7 -> :sswitch_55
        0xa8 -> :sswitch_54
        0xa9 -> :sswitch_53
        0xaa -> :sswitch_52
        0xab -> :sswitch_51
        0xac -> :sswitch_50
        0xad -> :sswitch_4f
        0xae -> :sswitch_4e
        0xaf -> :sswitch_4d
        0xb0 -> :sswitch_4c
        0xb1 -> :sswitch_4b
        0xb2 -> :sswitch_4a
        0xb3 -> :sswitch_49
        0xb4 -> :sswitch_48
        0xb5 -> :sswitch_47
        0xb6 -> :sswitch_46
        0xb7 -> :sswitch_45
        0xb8 -> :sswitch_44
        0xb9 -> :sswitch_43
        0xba -> :sswitch_42
        0xbb -> :sswitch_41
        0xbc -> :sswitch_40
        0xbd -> :sswitch_3f
        0xbe -> :sswitch_3e
        0xbf -> :sswitch_3d
        0xc0 -> :sswitch_3c
        0xc1 -> :sswitch_3b
        0xc2 -> :sswitch_3a
        0xc3 -> :sswitch_39
        0xc4 -> :sswitch_38
        0xc5 -> :sswitch_37
        0xc6 -> :sswitch_36
        0xc7 -> :sswitch_35
        0xc8 -> :sswitch_34
        0xc9 -> :sswitch_33
        0xca -> :sswitch_32
        0xcb -> :sswitch_31
        0xcc -> :sswitch_30
        0xcd -> :sswitch_2f
        0xce -> :sswitch_2e
        0xcf -> :sswitch_2d
        0xd0 -> :sswitch_2c
        0xd1 -> :sswitch_2b
        0xd2 -> :sswitch_2a
        0xd3 -> :sswitch_29
        0xd4 -> :sswitch_28
        0xd5 -> :sswitch_27
        0xd6 -> :sswitch_26
        0xd7 -> :sswitch_25
        0xd8 -> :sswitch_24
        0xd9 -> :sswitch_23
        0xda -> :sswitch_22
        0xdb -> :sswitch_21
        0xdc -> :sswitch_20
        0xdd -> :sswitch_1f
        0xde -> :sswitch_1e
        0xdf -> :sswitch_1d
        0xe0 -> :sswitch_1c
        0xe1 -> :sswitch_1b
        0xe2 -> :sswitch_1a
        0xe3 -> :sswitch_19
        0xe4 -> :sswitch_18
        0xe5 -> :sswitch_17
        0xe6 -> :sswitch_16
        0xe7 -> :sswitch_15
        0xe8 -> :sswitch_14
        0xe9 -> :sswitch_13
        0xea -> :sswitch_12
        0xeb -> :sswitch_11
        0xec -> :sswitch_10
        0xed -> :sswitch_f
        0xee -> :sswitch_e
        0xef -> :sswitch_d
        0xf0 -> :sswitch_c
        0xf1 -> :sswitch_b
        0xf2 -> :sswitch_a
        0xf3 -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 7116
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 7144
    const-string v0, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioEx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7145
    return-object p0

    .line 7147
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7151
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->registerService(Ljava/lang/String;)V

    .line 7152
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 7106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 7156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 7138
    const/4 v0, 0x1

    return v0
.end method
