.class public Lcom/tencent/tme/live/w0/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/w0/m$b;,
        Lcom/tencent/tme/live/w0/m$a;,
        Lcom/tencent/tme/live/w0/m$c;,
        Lcom/tencent/tme/live/w0/m$d;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/m$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/tencent/tme/live/w0/m$d;
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/w0/m$d;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/m$d;-><init>()V

    const-string v1, "team_id"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tme/live/w0/m$d;->a:Ljava/lang/String;

    const-string v1, "team_name"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tme/live/w0/m$d;->b:Ljava/lang/String;

    const-string v1, "team_logo"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/tme/live/w0/m$d;->c:Ljava/lang/String;

    return-object v0
.end method
