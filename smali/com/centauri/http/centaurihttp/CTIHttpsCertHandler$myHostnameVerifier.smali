.class Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$myHostnameVerifier;
.super Ljava/lang/Object;
.source "CTIHttpsCertHandler.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "myHostnameVerifier"
.end annotation


# instance fields
.field private final ipChecker:Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;


# direct methods
.method private constructor <init>(Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$myHostnameVerifier;->ipChecker:Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;

    return-void
.end method

.method synthetic constructor <init>(Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$1;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$myHostnameVerifier;-><init>(Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;)V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 273
    iget-object p2, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$myHostnameVerifier;->ipChecker:Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 277
    :cond_0
    invoke-interface {p2, p1}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$CTIIPChecker;->isCentauriIP(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
