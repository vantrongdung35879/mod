.class public Lcom/ihoc/mgpa/gradish/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Lorg/json/JSONObject;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_vendorConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/o1;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/ihoc/mgpa/gradish/o1;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/o1;->a:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/o1;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o1;->d:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    sput-object p1, Lcom/ihoc/mgpa/gradish/o1;->d:Lorg/json/JSONObject;

    .line 3
    const-string v0, "permissionCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/o1;->a:Ljava/lang/String;

    .line 4
    const-string v0, "gameFlags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/o1;->b:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/o1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/o1;->a:Ljava/lang/String;

    return-object v0
.end method
