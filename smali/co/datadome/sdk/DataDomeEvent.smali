.class public Lco/datadome/sdk/DataDomeEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final date:J

.field private final id:I

.field private final message:Ljava/lang/String;

.field private final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lco/datadome/sdk/DataDomeEvent;->id:I

    iput-object p2, p0, Lco/datadome/sdk/DataDomeEvent;->message:Ljava/lang/String;

    iput-object p3, p0, Lco/datadome/sdk/DataDomeEvent;->source:Ljava/lang/String;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lco/datadome/sdk/DataDomeEvent;->date:J

    return-void
.end method


# virtual methods
.method public customJsonString()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget v1, p0, Lco/datadome/sdk/DataDomeEvent;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lco/datadome/sdk/DataDomeEvent;->message:Ljava/lang/String;

    iget-object v3, p0, Lco/datadome/sdk/DataDomeEvent;->source:Ljava/lang/String;

    iget-wide v4, p0, Lco/datadome/sdk/DataDomeEvent;->date:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    const-string/jumbo v1, "{\"id\":%d, \"message\":\"%s\", \"source\":\"%s\", \"date\":%d}"

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
