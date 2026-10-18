.class public final Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;",
        ">;"
    }
.end annotation


# instance fields
.field public content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

.field public duration:Ljava/lang/Integer;

.field public expire:Ljava/lang/Integer;

.field public option_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/broadcastMsg/Option;",
            ">;"
        }
    .end annotation
.end field

.field public play_type:Ljava/lang/Integer;

.field public points:Ljava/lang/Integer;

.field public question_id:Ljava/lang/String;

.field public schedule_id:Ljava/lang/String;

.field public update_period:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->question_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->question_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->option_list:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->option_list:Ljava/util/List;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->points:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->points:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->update_period:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->update_period:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->expire:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->expire:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->duration:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->duration:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->play_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->play_type:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->schedule_id:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->schedule_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->build()Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$1;)V

    return-object v0
.end method

.method public content(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    return-object p0
.end method

.method public duration(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->duration:Ljava/lang/Integer;

    return-object p0
.end method

.method public expire(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->expire:Ljava/lang/Integer;

    return-object p0
.end method

.method public option_list(Ljava/util/List;)Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/broadcastMsg/Option;",
            ">;)",
            "Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/tmes/Message$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->option_list:Ljava/util/List;

    return-object p0
.end method

.method public play_type(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->play_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public points(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->points:Ljava/lang/Integer;

    return-object p0
.end method

.method public question_id(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->question_id:Ljava/lang/String;

    return-object p0
.end method

.method public schedule_id(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->schedule_id:Ljava/lang/String;

    return-object p0
.end method

.method public update_period(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->update_period:Ljava/lang/Integer;

    return-object p0
.end method
