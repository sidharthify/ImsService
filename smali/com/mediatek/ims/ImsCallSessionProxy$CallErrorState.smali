.class final enum Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;
.super Ljava/lang/Enum;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CallErrorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

.field public static final enum DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

.field public static final enum DISCONNECT:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

.field public static final enum IDLE:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;


# direct methods
.method private static synthetic $values()[Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;
    .locals 3

    .line 265
    sget-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->IDLE:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    sget-object v2, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    filled-new-array {v0, v1, v2}, [Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 266
    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->IDLE:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    const-string v1, "DIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    const-string v1, "DISCONNECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 265
    invoke-static {}, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->$values()[Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->$VALUES:[Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 265
    const-class v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;
    .locals 1

    .line 265
    sget-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->$VALUES:[Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-virtual {v0}, [Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    return-object v0
.end method
