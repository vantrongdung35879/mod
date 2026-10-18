.class public final Lcom/beetalk/sdk/networking/DataDome;
.super Ljava/lang/Object;
.source "DataDome.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0013R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/DataDome;",
        "",
        "customAcceptHeader",
        "",
        "listener",
        "Lco/datadome/sdk/DataDomeSDKListener;",
        "cookie",
        "",
        "(ZLco/datadome/sdk/DataDomeSDKListener;Ljava/lang/String;)V",
        "dataDomeSDK",
        "Lco/datadome/sdk/DataDomeSDK$Builder;",
        "getCookie",
        "interceptor",
        "Lco/datadome/sdk/DataDomeInterceptor;",
        "trackEvent",
        "",
        "event",
        "Lco/datadome/sdk/DataDomeEvent;",
        "trackTouchEvent",
        "Landroid/view/MotionEvent;",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final dataDomeSDK:Lco/datadome/sdk/DataDomeSDK$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/beetalk/sdk/networking/DataDome;-><init>(ZLco/datadome/sdk/DataDomeSDKListener;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLco/datadome/sdk/DataDomeSDKListener;Ljava/lang/String;)V
    .locals 3

    const-string v0, "cookie"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Application"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Application;

    .line 40
    const-string v1, "AE3F04AD3F0D3A462481A337485081"

    .line 41
    const-string v2, "4.0.39"

    .line 38
    invoke-static {v0, v1, v2}, Lco/datadome/sdk/DataDomeSDK;->with(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p2}, Lco/datadome/sdk/DataDomeSDK$Builder;->listener(Lco/datadome/sdk/DataDomeSDKListener;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object p2

    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lco/datadome/sdk/DataDomeSDK$Builder;->bypassAcceptHeader(Ljava/lang/Boolean;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 45
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lco/datadome/sdk/DataDomeSDK$Builder;->activateDatadomeLogger(Ljava/lang/Boolean;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object p1

    .line 46
    sget-object p2, Lco/datadome/sdk/DataDomeSDK$BackBehaviour;->GO_BACK:Lco/datadome/sdk/DataDomeSDK$BackBehaviour;

    invoke-virtual {p1, p2}, Lco/datadome/sdk/DataDomeSDK$Builder;->backBehaviour(Lco/datadome/sdk/DataDomeSDK$BackBehaviour;)Lco/datadome/sdk/DataDomeSDK$Builder;

    move-result-object p1

    .line 48
    move-object p2, p3

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 49
    invoke-virtual {p1, p3}, Lco/datadome/sdk/DataDomeSDK$Builder;->setCookie(Ljava/lang/String;)V

    .line 39
    :cond_0
    const-string p2, "apply(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/beetalk/sdk/networking/DataDome;->dataDomeSDK:Lco/datadome/sdk/DataDomeSDK$Builder;

    return-void
.end method

.method public synthetic constructor <init>(ZLco/datadome/sdk/DataDomeSDKListener;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 33
    const-string p3, ""

    .line 30
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/beetalk/sdk/networking/DataDome;-><init>(ZLco/datadome/sdk/DataDomeSDKListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCookie()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/beetalk/sdk/networking/DataDome;->dataDomeSDK:Lco/datadome/sdk/DataDomeSDK$Builder;

    invoke-virtual {v0}, Lco/datadome/sdk/DataDomeSDK$Builder;->getCookieWithAttributes()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCookieWithAttributes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final interceptor()Lco/datadome/sdk/DataDomeInterceptor;
    .locals 3

    .line 55
    new-instance v0, Lco/datadome/sdk/DataDomeInterceptor;

    .line 56
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.Application"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Application;

    .line 57
    iget-object v2, p0, Lcom/beetalk/sdk/networking/DataDome;->dataDomeSDK:Lco/datadome/sdk/DataDomeSDK$Builder;

    .line 55
    invoke-direct {v0, v1, v2}, Lco/datadome/sdk/DataDomeInterceptor;-><init>(Landroid/app/Application;Lco/datadome/sdk/DataDomeSDK$Builder;)V

    return-object v0
.end method

.method public final trackEvent(Lco/datadome/sdk/DataDomeEvent;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/beetalk/sdk/networking/DataDome;->dataDomeSDK:Lco/datadome/sdk/DataDomeSDK$Builder;

    invoke-virtual {v0, p1}, Lco/datadome/sdk/DataDomeSDK$Builder;->logEvent(Lco/datadome/sdk/DataDomeEvent;)V

    return-void
.end method

.method public final trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/beetalk/sdk/networking/DataDome;->dataDomeSDK:Lco/datadome/sdk/DataDomeSDK$Builder;

    invoke-virtual {v0, p1}, Lco/datadome/sdk/DataDomeSDK$Builder;->handleTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
