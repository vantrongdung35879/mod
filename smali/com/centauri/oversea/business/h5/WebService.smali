.class public Lcom/centauri/oversea/business/h5/WebService;
.super Landroid/app/Service;
.source "WebService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/h5/WebService$WebBinder;
    }
.end annotation


# static fields
.field static MainHandler:Landroid/os/Handler; = null

.field public static final ON_RESPONSE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "WebService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/centauri/oversea/business/h5/WebService$1;

    invoke-direct {v0}, Lcom/centauri/oversea/business/h5/WebService$1;-><init>()V

    sput-object v0, Lcom/centauri/oversea/business/h5/WebService;->MainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 36
    new-instance p1, Lcom/centauri/oversea/business/h5/WebService$WebBinder;

    invoke-direct {p1}, Lcom/centauri/oversea/business/h5/WebService$WebBinder;-><init>()V

    return-object p1
.end method
