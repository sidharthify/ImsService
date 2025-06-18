.class public final Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;
.super Ljava/lang/Object;
.source "TrafficDescriptor.java"


# instance fields
.field public connectionCapabilities:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalConnectionCapabilities;

.field public dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

.field public domainDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalDomainDescriptors;

.field public ipDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;

.field public osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/hardware/radio/V1_6/OptionalDnn;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalDnn;-><init>()V

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    .line 13
    new-instance v0, Landroid/hardware/radio/V1_6/OptionalOsAppId;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalOsAppId;-><init>()V

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    .line 14
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;-><init>()V

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->ipDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;

    .line 15
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalDomainDescriptors;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalDomainDescriptors;-><init>()V

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->domainDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalDomainDescriptors;

    .line 16
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalConnectionCapabilities;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalConnectionCapabilities;-><init>()V

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->connectionCapabilities:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalConnectionCapabilities;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 86
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 87
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xb0

    int-to-long v5, v3

    .line 88
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    .line 87
    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 91
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 93
    new-instance v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;

    invoke-direct {v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;-><init>()V

    .line 94
    .local v5, "_hidl_vec_element":Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;
    mul-int/lit16 v6, v4, 0xb0

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5    # "_hidl_vec_element":Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 121
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 122
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 123
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 124
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xb0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 125
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 126
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;

    mul-int/lit16 v5, v3, 0xb0

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 131
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 132
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 20
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 21
    return v0

    .line 23
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 24
    return v1

    .line 26
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;

    if-eq v2, v3, :cond_2

    .line 27
    return v1

    .line 29
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;

    .line 30
    .local v2, "other":Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;
    iget-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    iget-object v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 31
    return v1

    .line 33
    :cond_3
    iget-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    iget-object v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 34
    return v1

    .line 36
    :cond_4
    iget-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->ipDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;

    iget-object v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->ipDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 37
    return v1

    .line 39
    :cond_5
    iget-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->domainDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalDomainDescriptors;

    iget-object v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->domainDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalDomainDescriptors;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 40
    return v1

    .line 42
    :cond_6
    iget-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->connectionCapabilities:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalConnectionCapabilities;

    iget-object v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->connectionCapabilities:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalConnectionCapabilities;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 43
    return v1

    .line 45
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 50
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    .line 51
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    .line 52
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->ipDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;

    .line 53
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->domainDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalDomainDescriptors;

    .line 54
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->connectionCapabilities:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalConnectionCapabilities;

    .line 55
    invoke-static {v4}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 50
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 104
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/OptionalDnn;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 105
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    const-wide/16 v1, 0x18

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/OptionalOsAppId;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 106
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->ipDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;

    const-wide/16 v1, 0x30

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 107
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->domainDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalDomainDescriptors;

    const-wide/16 v1, 0x80

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalDomainDescriptors;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->connectionCapabilities:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalConnectionCapabilities;

    const-wide/16 v1, 0x98

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalConnectionCapabilities;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 77
    const-wide/16 v0, 0xb0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ".dnn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", .osAppId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .ipDescriptors = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->ipDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .domainDescriptors = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->domainDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalDomainDescriptors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .connectionCapabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->connectionCapabilities:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalConnectionCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 136
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/OptionalDnn;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 137
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    const-wide/16 v1, 0x18

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/OptionalOsAppId;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 138
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->ipDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;

    const-wide/16 v1, 0x30

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 139
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->domainDescriptors:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalDomainDescriptors;

    const-wide/16 v1, 0x80

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalDomainDescriptors;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 140
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->connectionCapabilities:Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalConnectionCapabilities;

    const-wide/16 v1, 0x98

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalConnectionCapabilities;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 141
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 112
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xb0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 113
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/TrafficDescriptor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 115
    return-void
.end method
