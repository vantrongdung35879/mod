.class public abstract Lcom/centauri/oversea/business/h5/IWebInterface$Stub;
.super Landroid/os/Binder;
.source "IWebInterface.java"

# interfaces
.implements Lcom/centauri/oversea/business/h5/IWebInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/h5/IWebInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/h5/IWebInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.centauri.oversea.business.h5.IWebInterface"

.field static final TRANSACTION_onResult:I = 0x1

.field static final TRANSACTION_queryCacheIP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.centauri.oversea.business.h5.IWebInterface"

    invoke-virtual {p0, p0, v0}, Lcom/centauri/oversea/business/h5/IWebInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/centauri/oversea/business/h5/IWebInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    const-string v0, "com.centauri.oversea.business.h5.IWebInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lcom/centauri/oversea/business/h5/IWebInterface;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcom/centauri/oversea/business/h5/IWebInterface;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcom/centauri/oversea/business/h5/IWebInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/IWebInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/centauri/oversea/business/h5/IWebInterface;
    .locals 1

    .line 160
    sget-object v0, Lcom/centauri/oversea/business/h5/IWebInterface$Stub$Proxy;->sDefaultImpl:Lcom/centauri/oversea/business/h5/IWebInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/centauri/oversea/business/h5/IWebInterface;)Z
    .locals 1

    .line 153
    sget-object v0, Lcom/centauri/oversea/business/h5/IWebInterface$Stub$Proxy;->sDefaultImpl:Lcom/centauri/oversea/business/h5/IWebInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 154
    sput-object p0, Lcom/centauri/oversea/business/h5/IWebInterface$Stub$Proxy;->sDefaultImpl:Lcom/centauri/oversea/business/h5/IWebInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 55
    const-string v1, "com.centauri.oversea.business.h5.IWebInterface"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 77
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/IWebInterface$Stub;->queryCacheIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 64
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-virtual {p0, p1, p4, p2}, Lcom/centauri/oversea/business/h5/IWebInterface$Stub;->onResult(IILjava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
