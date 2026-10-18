.class public abstract Lco/datadome/sdk/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/datadome/sdk/d$b;,
        Lco/datadome/sdk/d$c;
    }
.end annotation


# static fields
.field public static final DATADOME_COOKIE_PREFIX:Ljava/lang/String; = "datadome="

.field public static final HTTP_HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HTTP_HEADER_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HTTP_HEADER_SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field private static v:Landroid/os/ConditionVariable;

.field private static w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/datadome/sdk/DataDomeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static y:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/Boolean;

.field public bypassDataDomeAcceptHeader:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field protected d:Lco/datadome/sdk/DataDomeSDK$BackBehaviour;

.field protected e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lco/datadome/sdk/d;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Lokhttp3/Request;

.field protected k:Lco/datadome/sdk/DataDomeSDKListener;

.field protected l:Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;

.field private m:Z

.field private n:Z

.field private o:Z

.field protected p:Ljava/lang/String;

.field private q:Lco/datadome/sdk/j$a;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/concurrent/ExecutorService;

.field private t:Ljava/util/Date;

.field private u:Lco/datadome/sdk/d$b;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2Ws-4t_evffh-oNyVMaUd2gauyc()V
    .locals 0

    invoke-static {}, Lco/datadome/sdk/d;->g()V

    return-void
.end method

.method public static synthetic $r8$lambda$Cd4elksra1ePgrzDCeH9NhAxYOc(Lco/datadome/sdk/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lco/datadome/sdk/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$onvGRoWF12TSUUNJmWpeuRxXZ1w(Lco/datadome/sdk/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lco/datadome/sdk/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lco/datadome/sdk/d;->v:Landroid/os/ConditionVariable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lco/datadome/sdk/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lco/datadome/sdk/d;->x:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lco/datadome/sdk/d;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lco/datadome/sdk/d;->a:Ljava/lang/Boolean;

    iput-object v1, p0, Lco/datadome/sdk/d;->b:Ljava/lang/Boolean;

    iput-object v1, p0, Lco/datadome/sdk/d;->c:Ljava/lang/Boolean;

    iput-object v1, p0, Lco/datadome/sdk/d;->bypassDataDomeAcceptHeader:Ljava/lang/Boolean;

    sget-object v1, Lco/datadome/sdk/DataDomeSDK$BackBehaviour;->GO_BACKGROUND:Lco/datadome/sdk/DataDomeSDK$BackBehaviour;

    iput-object v1, p0, Lco/datadome/sdk/d;->d:Lco/datadome/sdk/DataDomeSDK$BackBehaviour;

    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lco/datadome/sdk/d;->e:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lco/datadome/sdk/d;->f:Ljava/lang/ref/WeakReference;

    const-string v1, ""

    iput-object v1, p0, Lco/datadome/sdk/d;->h:Ljava/lang/String;

    iput-object v1, p0, Lco/datadome/sdk/d;->i:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-boolean v0, p0, Lco/datadome/sdk/d;->m:Z

    iput-boolean v0, p0, Lco/datadome/sdk/d;->n:Z

    iput-boolean v0, p0, Lco/datadome/sdk/d;->o:Z

    iput-object v2, p0, Lco/datadome/sdk/d;->p:Ljava/lang/String;

    sget-object v0, Lco/datadome/sdk/j$a;->a:Lco/datadome/sdk/j$a;

    iput-object v0, p0, Lco/datadome/sdk/d;->q:Lco/datadome/sdk/j$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/datadome/sdk/d;->r:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lco/datadome/sdk/d;->s:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a(I)Lco/datadome/sdk/DataDomeSDK$ResponseType;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lco/datadome/sdk/d;->b:Ljava/lang/Boolean;

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    sget-object p1, Lco/datadome/sdk/DataDomeSDK$ResponseType;->TRAP:Lco/datadome/sdk/DataDomeSDK$ResponseType;

    goto :goto_0

    :cond_0
    sget-object p1, Lco/datadome/sdk/DataDomeSDK$ResponseType;->REDIRECT:Lco/datadome/sdk/DataDomeSDK$ResponseType;

    goto :goto_0

    :cond_1
    sget-object p1, Lco/datadome/sdk/DataDomeSDK$ResponseType;->DEVICE_CHECK:Lco/datadome/sdk/DataDomeSDK$ResponseType;

    goto :goto_0

    :cond_2
    sget-object p1, Lco/datadome/sdk/DataDomeSDK$ResponseType;->HARD_BLOCK:Lco/datadome/sdk/DataDomeSDK$ResponseType;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lco/datadome/sdk/d;->b:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object p1, Lco/datadome/sdk/DataDomeSDK$ResponseType;->BLOCK:Lco/datadome/sdk/DataDomeSDK$ResponseType;

    :goto_0
    return-object p1
.end method

.method private a(ILjava/util/Map;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lco/datadome/sdk/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X-DD-B header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lco/datadome/sdk/d;->b(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lco/datadome/sdk/d;->b(Z)V

    const-string v1, "Receiving a fast mode device check response"

    invoke-static {v1}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to convert x-dd-b header to integer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataDome"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/16 v1, 0x193

    if-eq p1, v1, :cond_1

    const/16 v1, 0x191

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-static {p2}, Lco/datadome/sdk/DataDomeUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lco/datadome/sdk/d;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lco/datadome/sdk/d;->c:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lco/datadome/sdk/d;->l:Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Not captcha\'s url found"

    invoke-virtual {p2, p1, v0}, Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;->onError(Ljava/lang/Integer;Ljava/lang/String;)V

    sget-object p1, Lco/datadome/sdk/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fast mode device-check passed and got cookie: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "datadome="

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "got new cookie from device check: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "co.datadome.sdk.CAPTCHA_RESULT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lco/datadome/sdk/d$b;

    iget-object v3, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    invoke-direct {v2, p0, v3}, Lco/datadome/sdk/d$b;-><init>(Lco/datadome/sdk/d;Lco/datadome/sdk/f;)V

    iput-object v2, p0, Lco/datadome/sdk/d;->u:Lco/datadome/sdk/d$b;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lco/datadome/sdk/d;->u:Lco/datadome/sdk/d$b;

    invoke-virtual {v2, v3, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "captcha_result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "cookie"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "captcha_url"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lco/datadome/sdk/d;)V
    .locals 0

    invoke-direct {p0}, Lco/datadome/sdk/d;->f()V

    return-void
.end method

.method static synthetic a(Lco/datadome/sdk/d;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0, p1}, Lco/datadome/sdk/d;->a(Ljava/util/Date;)V

    return-void
.end method

.method private a(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lco/datadome/sdk/d;->t:Ljava/util/Date;

    return-void
.end method

.method private a(Lokhttp3/Response;Lco/datadome/sdk/e;)V
    .locals 5

    const-string v0, "blocked captcha url: "

    const-string v1, "Blocked response: "

    const-string v2, "Handling the blocked response"

    const-string v3, "DataDome"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v2, v4}, Lco/datadome/sdk/DataDomeSDKListener;->onHangOnRequest(I)V

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lco/datadome/sdk/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nFor request "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lco/datadome/sdk/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lco/datadome/sdk/DataDomeUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lco/datadome/sdk/DataDomeSDKListener;->willDisplayCaptcha()V

    :cond_1
    invoke-direct {p0, p1}, Lco/datadome/sdk/d;->c(Ljava/lang/String;)V

    sget-object p1, Lco/datadome/sdk/d;->v:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    sget-object p1, Lco/datadome/sdk/d;->v:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz p1, :cond_3

    const-string p2, "Not captcha\'s url found"

    const/16 v0, 0x1f8

    invoke-interface {p1, v0, p2}, Lco/datadome/sdk/f;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Blocked Response Handling"

    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz p1, :cond_3

    const/16 p2, 0x1f7

    const-string v0, "Problem parsing json"

    invoke-interface {p1, p2, v0}, Lco/datadome/sdk/f;->onError(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lokhttp3/Response;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DataDome"

    const-string v1, "Handling Salesforce blocked response"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lco/datadome/sdk/DataDomeSDKListener;->onHangOnRequest(I)V

    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lco/datadome/sdk/DataDomeSDKListener;->willDisplayCaptcha()V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrieved challenge URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nFor request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    const-string v1, "set-cookie"

    invoke-virtual {p1, v1}, Lokhttp3/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lco/datadome/sdk/d;->r:Ljava/util/ArrayList;

    invoke-static {v1}, Lco/datadome/sdk/DataDomeUtils;->getCookieValueName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "dwsid"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lco/datadome/sdk/d;->r:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dwsid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0, v0}, Lco/datadome/sdk/d;->c(Ljava/lang/String;)V

    sget-object p1, Lco/datadome/sdk/d;->v:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    sget-object p1, Lco/datadome/sdk/d;->v:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz p1, :cond_5

    const/16 p2, 0x1f8

    const-string v0, "Not captcha\'s url found"

    invoke-interface {p1, p2, v0}, Lco/datadome/sdk/f;->onError(ILjava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lco/datadome/sdk/d;->m:Z

    return-void
.end method

.method static synthetic a(Lco/datadome/sdk/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lco/datadome/sdk/d;->n:Z

    return p1
.end method

.method private b(I)Ljava/lang/Boolean;
    .locals 3

    invoke-direct {p0, p1}, Lco/datadome/sdk/d;->a(I)Lco/datadome/sdk/DataDomeSDK$ResponseType;

    move-result-object v0

    sget-object v1, Lco/datadome/sdk/DataDomeSDK$ResponseType;->DEVICE_CHECK:Lco/datadome/sdk/DataDomeSDK$ResponseType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Response type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lco/datadome/sdk/DataDomeSDK$ResponseType;->DEVICE_CHECK:Lco/datadome/sdk/DataDomeSDK$ResponseType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    shr-int/lit8 p1, p1, 0x8

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lco/datadome/sdk/d;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lco/datadome/sdk/d;->a(Z)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lco/datadome/sdk/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lco/datadome/sdk/d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lco/datadome/sdk/d;->a:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "loading device check url "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    new-instance v0, Lco/datadome/sdk/JavascriptInterfaceDataDomeListener;

    new-instance v3, Lco/datadome/sdk/d$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1}, Lco/datadome/sdk/d$$ExternalSyntheticLambda0;-><init>(Lco/datadome/sdk/d;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lco/datadome/sdk/JavascriptInterfaceDataDomeListener;-><init>(Lco/datadome/sdk/JavascriptInterfaceDataDomeListener$DataDomeJavascriptInterfaceListener;)V

    const-string p1, "android"

    invoke-virtual {v2, v0, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v3, Lco/datadome/sdk/CaptchaActivity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v3, 0x10800000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "cookie"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "captcha_url"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lco/datadome/sdk/d;->d:Lco/datadome/sdk/DataDomeSDK$BackBehaviour;

    const-string v2, "backBehaviour"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lco/datadome/sdk/d;->b:Ljava/lang/Boolean;

    const-string v2, "is_response_type_hard_block"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-boolean p1, p0, Lco/datadome/sdk/d;->o:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lco/datadome/sdk/d;->r:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lco/datadome/sdk/d;->r:Ljava/util/ArrayList;

    const-string v2, "cookieHeaders"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-boolean p1, p0, Lco/datadome/sdk/d;->o:Z

    const-string v2, "isSfcc"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget-object p1, p0, Lco/datadome/sdk/d;->p:Ljava/lang/String;

    const-string v2, "responsePageLanguage"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v2, "co.datadome.sdk.CAPTCHA_RESULT"

    invoke-direct {p1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lco/datadome/sdk/d;->u:Lco/datadome/sdk/d$b;

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lco/datadome/sdk/d;->u:Lco/datadome/sdk/d$b;

    invoke-virtual {v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    new-instance v2, Lco/datadome/sdk/d$b;

    iget-object v3, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    invoke-direct {v2, p0, v3}, Lco/datadome/sdk/d$b;-><init>(Lco/datadome/sdk/d;Lco/datadome/sdk/f;)V

    iput-object v2, p0, Lco/datadome/sdk/d;->u:Lco/datadome/sdk/d$b;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lco/datadome/sdk/d;->u:Lco/datadome/sdk/d$b;

    invoke-virtual {v2, v3, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p1, "DataDome"

    const-string v0, "Failed to display a DataDome CAPTCHA due to an unexpected null application context. A non-null application instance must be provided when the SDK is initialized."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz p1, :cond_5

    sget-object p1, Lco/datadome/sdk/DataDomeSDK$a;->b:Lco/datadome/sdk/DataDomeSDK$a;

    const-string v0, "sdk"

    invoke-virtual {p1, v0}, Lco/datadome/sdk/DataDomeSDK$a;->a(Ljava/lang/String;)Lco/datadome/sdk/DataDomeEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lco/datadome/sdk/d;->logEvent(Lco/datadome/sdk/DataDomeEvent;)V

    iget-object p1, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    const/16 v0, 0x1f8

    const-string v1, "Empty application context."

    invoke-interface {p1, v0, v1}, Lco/datadome/sdk/f;->onError(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method private b(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lco/datadome/sdk/d;->a:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic b(Lco/datadome/sdk/d;)Z
    .locals 0

    iget-boolean p0, p0, Lco/datadome/sdk/d;->n:Z

    return p0
.end method

.method static synthetic c(Lco/datadome/sdk/d;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lco/datadome/sdk/d;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lco/datadome/sdk/d;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lco/datadome/sdk/d;->b(Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lco/datadome/sdk/d;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DataDome"

    const-string v1, "Load Captcha View"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz p1, :cond_0

    const/16 v0, 0x1f9

    const-string v1, "Can\'t start Captcha web view"

    invoke-interface {p1, v0, v1}, Lco/datadome/sdk/f;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic d(Lco/datadome/sdk/d;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lco/datadome/sdk/d;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lco/datadome/sdk/d;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lco/datadome/sdk/d;->m:Z

    if-eqz v0, :cond_0

    const-string p1, "DataDome"

    const-string v0, "Captcha already displayed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/datadome/sdk/d;->a(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lco/datadome/sdk/d$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lco/datadome/sdk/d$$ExternalSyntheticLambda1;-><init>(Lco/datadome/sdk/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic e()V
    .locals 0

    invoke-static {}, Lco/datadome/sdk/d;->g()V

    return-void
.end method

.method private f()V
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0}, Lco/datadome/sdk/d;->a(Ljava/util/Date;)V

    sget-object v0, Lco/datadome/sdk/d;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static g()V
    .locals 1

    sget-object v0, Lco/datadome/sdk/d;->v:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private h()Ljava/lang/Boolean;
    .locals 5

    sget-object v0, Lco/datadome/sdk/d;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/datadome/sdk/d;->t:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lco/datadome/sdk/d;->t:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    sget-object v0, Lco/datadome/sdk/d;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isHandlingResponseInProgress()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lco/datadome/sdk/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static resetHandlingResponseInProgress()V
    .locals 2

    sget-object v0, Lco/datadome/sdk/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method a(Lokhttp3/Response;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x12e

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "dduser-challenge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v2
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lco/datadome/sdk/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/datadome/sdk/DataDomeUtils;->parseCookieValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "X-DD-B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "X-SF-CC-X-dd-b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lokhttp3/Response;Ljava/util/Map;Ljava/lang/String;Lokhttp3/Call;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ")",
            "Lokhttp3/Response;"
        }
    .end annotation

    const-string v0, "Retried failed request "

    sget-object v1, Lco/datadome/sdk/DataDomeSDK$a;->c:Lco/datadome/sdk/DataDomeSDK$a;

    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Lco/datadome/sdk/DataDomeSDK$a;->a(Ljava/lang/String;)Lco/datadome/sdk/DataDomeEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lco/datadome/sdk/d;->logEvent(Lco/datadome/sdk/DataDomeEvent;)V

    invoke-virtual {p0, p1}, Lco/datadome/sdk/d;->a(Lokhttp3/Response;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lco/datadome/sdk/d;->o:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/datadome/sdk/d;->bypassDataDomeAcceptHeader:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DataDome"

    const-string v2, "bypassDataDomeAcceptHeader argument is not enabled is datadome sdk instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lco/datadome/sdk/j$a;->a:Lco/datadome/sdk/j$a;

    invoke-virtual {p0, v1}, Lco/datadome/sdk/d;->a(Lco/datadome/sdk/j$a;)V

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lco/datadome/sdk/d;->a(ILjava/util/Map;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lco/datadome/sdk/d;->o:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p4

    invoke-virtual {p2, p4, p3}, Lco/datadome/sdk/DataDomeSDKListener;->onDataDomeResponse(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lco/datadome/sdk/d;->c()V

    return-object p1

    :cond_3
    :goto_0
    const-string v1, "DataDome"

    const-string v2, "Blocked request by DataDome"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lco/datadome/sdk/e;

    invoke-interface {p4}, Lokhttp3/Call;->clone()Lokhttp3/Call;

    move-result-object p4

    invoke-direct {v1, p4, p2, p3}, Lco/datadome/sdk/e;-><init>(Lokhttp3/Call;Ljava/util/Map;Ljava/lang/String;)V

    sget-object p3, Lco/datadome/sdk/d;->v:Landroid/os/ConditionVariable;

    monitor-enter p3

    const/4 p4, 0x0

    :try_start_0
    const-string v2, "DataDome"

    const-string v3, "Validating the response"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p4, p0, Lco/datadome/sdk/d;->n:Z

    sget-object v2, Lco/datadome/sdk/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p2, "DataDome"

    const-string v2, "Validating another response already"

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lco/datadome/sdk/d;->v:Landroid/os/ConditionVariable;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_4
    sget-object v2, Lco/datadome/sdk/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v2, p0, Lco/datadome/sdk/d;->o:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p2}, Lco/datadome/sdk/d;->a(Lokhttp3/Response;Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, v1}, Lco/datadome/sdk/d;->a(Lokhttp3/Response;Lco/datadome/sdk/e;)V

    :goto_1
    iget-object p2, p0, Lco/datadome/sdk/d;->c:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lco/datadome/sdk/e;->a()Lokhttp3/Call;

    move-result-object p2

    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lco/datadome/sdk/e;->a()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " finished with code: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p3

    return-object p2

    :cond_6
    monitor-exit p3

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    const-string v0, "DataDome"

    const-string v1, "Response Handling"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p2, Lco/datadome/sdk/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit p3

    return-object p1

    :goto_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected a(Lco/datadome/sdk/j$a;)V
    .locals 0

    iput-object p1, p0, Lco/datadome/sdk/d;->q:Lco/datadome/sdk/j$a;

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Lco/datadome/sdk/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected a(Ljava/lang/Integer;Ljava/util/Map;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "Manual Response Handling"

    invoke-virtual {p0, p2}, Lco/datadome/sdk/d;->a(Ljava/util/Map;)Ljava/lang/String;

    invoke-direct {p0, p3, p2}, Lco/datadome/sdk/d;->a(ILjava/util/Map;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "Blocked request by DataDome"

    const-string p3, "DataDome"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object p2, Lco/datadome/sdk/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lco/datadome/sdk/d;->l:Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;->onRequestInProgress(Ljava/lang/Integer;)V

    :cond_0
    return-void

    :cond_1
    sget-object p2, Lco/datadome/sdk/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p4, "url"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lco/datadome/sdk/DataDomeUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_4

    iget-object p4, p0, Lco/datadome/sdk/d;->l:Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;->willDisplayCaptcha()V

    :cond_2
    const-string p4, "Showing captcha"

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lco/datadome/sdk/d;->c(Ljava/lang/String;)V

    sget-object p2, Lco/datadome/sdk/d;->v:Landroid/os/ConditionVariable;

    invoke-virtual {p2}, Landroid/os/ConditionVariable;->close()V

    sget-object p2, Lco/datadome/sdk/d;->v:Landroid/os/ConditionVariable;

    invoke-virtual {p2}, Landroid/os/ConditionVariable;->block()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object p2, Lco/datadome/sdk/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lco/datadome/sdk/d;->l:Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;->onDismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return-void

    :cond_4
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p4, "Not captcha\'s url found"

    invoke-direct {p0, p2, p4}, Lco/datadome/sdk/d;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_0
    move-exception p2

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const-string v1, "Problem parsing json"

    invoke-direct {p0, p4, v1}, Lco/datadome/sdk/d;->a(ILjava/lang/String;)V

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lco/datadome/sdk/d$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lco/datadome/sdk/d$$ExternalSyntheticLambda2;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p4, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Exception error: "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lco/datadome/sdk/d;->a(ILjava/lang/String;)V

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_5
    iget-object p1, p0, Lco/datadome/sdk/d;->l:Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;->onDismiss()V

    :cond_6
    invoke-virtual {p0}, Lco/datadome/sdk/d;->c()V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lco/datadome/sdk/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lco/datadome/sdk/d;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lco/datadome/sdk/i;->a(Landroid/content/Context;Ljava/lang/String;)Lco/datadome/sdk/i;

    move-result-object v0

    const-string v1, "datadome="

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lco/datadome/sdk/i;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "DataDome"

    const-string v0, "Failed to set a cookie value for DataDome due to an unexpected null application context. A non-null application instance must be provided when the SDK is initialized."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lco/datadome/sdk/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lco/datadome/sdk/d;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Lco/datadome/sdk/i;->a(Landroid/content/Context;Ljava/lang/String;)Lco/datadome/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lco/datadome/sdk/i;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "datadome="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    if-eqz v0, :cond_3

    sget-object v0, Lco/datadome/sdk/DataDomeSDK$a;->b:Lco/datadome/sdk/DataDomeSDK$a;

    const-string v2, "sdk"

    invoke-virtual {v0, v2}, Lco/datadome/sdk/DataDomeSDK$a;->a(Ljava/lang/String;)Lco/datadome/sdk/DataDomeEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/datadome/sdk/d;->logEvent(Lco/datadome/sdk/DataDomeEvent;)V

    iget-object v0, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    const/16 v2, 0x1f8

    const-string v3, "Empty application context."

    invoke-interface {v0, v2, v3}, Lco/datadome/sdk/f;->onError(ILjava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method protected c()V
    .locals 9

    invoke-direct {p0}, Lco/datadome/sdk/d;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lco/datadome/sdk/d;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lco/datadome/sdk/k;

    invoke-virtual {p0}, Lco/datadome/sdk/d;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lco/datadome/sdk/d;->h:Ljava/lang/String;

    iget-object v5, p0, Lco/datadome/sdk/d;->i:Ljava/lang/String;

    iget-object v6, p0, Lco/datadome/sdk/d;->g:Ljava/lang/String;

    iget-object v7, p0, Lco/datadome/sdk/d;->userAgent:Ljava/lang/String;

    sget-object v8, Lco/datadome/sdk/d;->x:Ljava/util/List;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lco/datadome/sdk/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v1, Lco/datadome/sdk/j;

    iget-object v2, p0, Lco/datadome/sdk/d;->k:Lco/datadome/sdk/DataDomeSDKListener;

    iget-object v3, p0, Lco/datadome/sdk/d;->e:Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lco/datadome/sdk/d;->q:Lco/datadome/sdk/j$a;

    invoke-direct {v1, v2, v3, v0, v4}, Lco/datadome/sdk/j;-><init>(Lco/datadome/sdk/DataDomeSDKListener;Ljava/lang/ref/WeakReference;Lco/datadome/sdk/k;Lco/datadome/sdk/j$a;)V

    new-instance v0, Lco/datadome/sdk/d$a;

    invoke-direct {v0, p0, v1}, Lco/datadome/sdk/d$a;-><init>(Lco/datadome/sdk/d;Lco/datadome/sdk/j;)V

    iget-object v1, p0, Lco/datadome/sdk/d;->s:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getCurrentEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lco/datadome/sdk/DataDomeEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lco/datadome/sdk/d;->x:Ljava/util/List;

    return-object v0
.end method

.method public getRequest()Lokhttp3/Request;
    .locals 1

    iget-object v0, p0, Lco/datadome/sdk/d;->j:Lokhttp3/Request;

    return-object v0
.end method

.method public logEvent(Lco/datadome/sdk/DataDomeEvent;)V
    .locals 2

    sget-object v0, Lco/datadome/sdk/d;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    :try_start_0
    sget-object v0, Lco/datadome/sdk/d;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
