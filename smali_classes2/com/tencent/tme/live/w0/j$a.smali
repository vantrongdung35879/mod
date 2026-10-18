.class public Lcom/tencent/tme/live/w0/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/w0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tme/live/w0/j$a;->b:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/tencent/tme/live/w0/j$a;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/w0/j$a;->f:I

    iput v0, p0, Lcom/tencent/tme/live/w0/j$a;->g:I

    iput v0, p0, Lcom/tencent/tme/live/w0/j$a;->h:I

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/tencent/tme/live/w0/j$a;
    .locals 5

    new-instance v0, Lcom/tencent/tme/live/w0/j$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/j$a;-><init>()V

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tme/live/w0/j$a;->i:I

    const-string v1, "gift_wording"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tme/live/w0/j$a;->d:Ljava/lang/String;

    const-string v1, "gift_pic"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tme/live/w0/j$a;->e:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tme/live/w0/j$a;->f:I

    const-string v1, "num"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tme/live/w0/j$a;->h:I

    const-string v1, "points"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tme/live/w0/j$a;->g:I

    const-string v1, "start_timestamp"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, v0, Lcom/tencent/tme/live/w0/j$a;->b:J

    const-string v1, "end_timestamp"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    mul-long v1, v1, v3

    iput-wide v1, v0, Lcom/tencent/tme/live/w0/j$a;->c:J

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/tencent/tme/live/w0/j$a;->a:I

    return-object v0
.end method
