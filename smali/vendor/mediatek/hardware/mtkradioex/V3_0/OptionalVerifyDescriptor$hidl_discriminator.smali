.class public final Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalVerifyDescriptor$hidl_discriminator;
.super Ljava/lang/Object;
.source "OptionalVerifyDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalVerifyDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final appCert:B = 0x1t

.field public static final noinit:B = 0x0t

.field public static final tdHash:B = 0x2t


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # B

    .line 15
    packed-switch p0, :pswitch_data_0

    .line 19
    const-string v0, "Unknown"

    return-object v0

    .line 18
    :pswitch_0
    const-string v0, "tdHash"

    return-object v0

    .line 17
    :pswitch_1
    const-string v0, "appCert"

    return-object v0

    .line 16
    :pswitch_2
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
