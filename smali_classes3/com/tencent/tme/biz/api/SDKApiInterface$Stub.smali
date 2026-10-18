.class public abstract Lcom/tencent/tme/biz/api/SDKApiInterface$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/tencent/tme/biz/api/SDKApiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/biz/api/SDKApiInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/biz/api/SDKApiInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.tme.biz.api.SDKApiInterface"

.field public static final TRANSACTION_registerListener:I = 0x2

.field public static final TRANSACTION_sendCommand:I = 0x1

.field public static final TRANSACTION_unRegisterListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.tme.biz.api.SDKApiInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/tme/biz/api/SDKApiInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tencent.tme.biz.api.SDKApiInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/tme/biz/api/SDKApiInterface;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/tme/biz/api/SDKApiInterface;

    return-object v0

    :cond_1
    new-instance v0, Lcom/tencent/tme/biz/api/SDKApiInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/tme/biz/api/SDKApiInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/tencent/tme/biz/api/SDKApiInterface;
    .locals 1

    sget-object v0, Lcom/tencent/tme/biz/api/SDKApiInterface$Stub$Proxy;->sDefaultImpl:Lcom/tencent/tme/biz/api/SDKApiInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/tencent/tme/biz/api/SDKApiInterface;)Z
    .locals 1

    sget-object v0, Lcom/tencent/tme/biz/api/SDKApiInterface$Stub$Proxy;->sDefaultImpl:Lcom/tencent/tme/biz/api/SDKApiInterface;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/tencent/tme/biz/api/SDKApiInterface$Stub$Proxy;->sDefaultImpl:Lcom/tencent/tme/biz/api/SDKApiInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.tencent.tme.biz.api.SDKApiInterface"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

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

    invoke-interface {p0}, Lcom/tencent/tme/biz/api/SDKApiInterface;->unRegisterListener()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/biz/api/HostListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tme/biz/api/HostListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tencent/tme/biz/api/SDKApiInterface;->registerListener(Lcom/tencent/tme/biz/api/HostListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/tencent/tme/biz/api/SDKApiInterface;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
