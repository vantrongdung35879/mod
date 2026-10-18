.class public Lcom/ihoc/mgpa/gradish/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/v$c;,
        Lcom/ihoc/mgpa/gradish/v$b;,
        Lcom/ihoc/mgpa/gradish/v$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/ihoc/mgpa/gradish/v$c;

.field public e:Lcom/ihoc/mgpa/gradish/v$b;

.field public f:Lcom/ihoc/mgpa/gradish/v$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_deviceCheckConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/v;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/v;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    :try_start_0
    const-string v1, "model"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/v;->b:Ljava/lang/String;

    .line 3
    const-string v1, "brand"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/v;->c:Ljava/lang/String;

    .line 4
    const-string v1, "available"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ihoc/mgpa/gradish/v;->a:Z

    .line 5
    new-instance v1, Lcom/ihoc/mgpa/gradish/v$c;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/gradish/v$c;-><init>(Lcom/ihoc/mgpa/gradish/v;)V

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/v;->d:Lcom/ihoc/mgpa/gradish/v$c;

    .line 6
    const-string v2, "prop"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ihoc/mgpa/gradish/v$c;->a(Lorg/json/JSONObject;)Z

    .line 7
    new-instance v1, Lcom/ihoc/mgpa/gradish/v$b;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/gradish/v$b;-><init>(Lcom/ihoc/mgpa/gradish/v;)V

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/v;->e:Lcom/ihoc/mgpa/gradish/v$b;

    .line 8
    const-string v2, "package"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ihoc/mgpa/gradish/v$b;->a(Lorg/json/JSONObject;)Z

    .line 9
    new-instance v1, Lcom/ihoc/mgpa/gradish/v$a;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/gradish/v$a;-><init>(Lcom/ihoc/mgpa/gradish/v;)V

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/v;->f:Lcom/ihoc/mgpa/gradish/v$a;

    .line 10
    const-string v2, "hardware"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ihoc/mgpa/gradish/v$a;->a(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    sget-object p1, Lcom/ihoc/mgpa/gradish/v;->g:Ljava/lang/String;

    const-string v1, "DeviceCheckConfig: parse: exception."

    invoke-static {p1, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
