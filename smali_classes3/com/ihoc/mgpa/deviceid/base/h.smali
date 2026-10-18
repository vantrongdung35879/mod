.class public abstract Lcom/ihoc/mgpa/deviceid/base/h;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/deviceid/base/h$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/ihoc/mgpa/deviceid/base/h$a;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hihonor.cloudservice.oaid.IOAIDService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/ihoc/mgpa/deviceid/base/h$a;

    if-nez v1, :cond_1

    new-instance v0, Lcom/ihoc/mgpa/deviceid/base/h$a;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/deviceid/base/h$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/ihoc/mgpa/deviceid/base/h$a;

    :goto_0
    return-object v0
.end method
