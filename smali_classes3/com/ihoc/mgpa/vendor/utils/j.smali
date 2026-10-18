.class public abstract Lcom/ihoc/mgpa/vendor/utils/j;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplus.cosa.gamemanagersdk.ICosaSdkCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.oplus.cosa.gamemanagersdk.ICosaSdkCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/ihoc/mgpa/vendor/utils/e$a;

    .line 1
    iget-object p2, p2, Lcom/ihoc/mgpa/vendor/utils/e$a;->a:Lcom/ihoc/mgpa/vendor/utils/e;

    .line 2
    iget-object p2, p2, Lcom/ihoc/mgpa/vendor/utils/e;->c:Lcom/ihoc/mgpa/vendor/utils/k;

    if-eqz p2, :cond_2

    .line 3
    invoke-interface {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/k;->a(Ljava/lang/String;)V

    .line 4
    :cond_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
