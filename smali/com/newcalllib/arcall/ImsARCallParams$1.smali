.class Lcom/newcalllib/arcall/ImsARCallParams$1;
.super Ljava/lang/Object;
.source "ImsARCallParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newcalllib/arcall/ImsARCallParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/newcalllib/arcall/ImsARCallParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/newcalllib/arcall/ImsARCallParams;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    new-instance v0, Lcom/newcalllib/arcall/ImsARCallParams;

    invoke-direct {v0, p1}, Lcom/newcalllib/arcall/ImsARCallParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/newcalllib/arcall/ImsARCallParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/newcalllib/arcall/ImsARCallParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/newcalllib/arcall/ImsARCallParams;
    .locals 1
    .param p1, "size"    # I

    .line 84
    new-array v0, p1, [Lcom/newcalllib/arcall/ImsARCallParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/newcalllib/arcall/ImsARCallParams$1;->newArray(I)[Lcom/newcalllib/arcall/ImsARCallParams;

    move-result-object p1

    return-object p1
.end method
