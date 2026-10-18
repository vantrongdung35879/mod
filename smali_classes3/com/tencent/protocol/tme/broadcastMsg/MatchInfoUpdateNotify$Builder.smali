.class public final Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;",
        ">;"
    }
.end annotation


# instance fields
.field public has_data_tab:Ljava/lang/Integer;

.field public match_time:Ljava/lang/Long;

.field public schedule_id:Ljava/lang/String;

.field public season_id:Ljava/lang/String;

.field public status:Ljava/lang/Integer;

.field public teamA_info:Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;

.field public teamA_score:Ljava/lang/Integer;

.field public teamB_info:Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;

.field public teamB_score:Ljava/lang/Integer;

.field public update_timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->schedule_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->schedule_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->teamA_score:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->teamA_score:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->teamB_score:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->teamB_score:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->match_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->match_time:Ljava/lang/Long;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->status:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->teamA_info:Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->teamA_info:Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->teamB_info:Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->teamB_info:Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->season_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->season_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->update_timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->update_timestamp:Ljava/lang/Long;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->has_data_tab:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->has_data_tab:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->build()Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$1;)V

    return-object v0
.end method

.method public has_data_tab(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->has_data_tab:Ljava/lang/Integer;

    return-object p0
.end method

.method public match_time(Ljava/lang/Long;)Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->match_time:Ljava/lang/Long;

    return-object p0
.end method

.method public schedule_id(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->schedule_id:Ljava/lang/String;

    return-object p0
.end method

.method public season_id(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->season_id:Ljava/lang/String;

    return-object p0
.end method

.method public status(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->status:Ljava/lang/Integer;

    return-object p0
.end method

.method public teamA_info(Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;)Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->teamA_info:Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;

    return-object p0
.end method

.method public teamA_score(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->teamA_score:Ljava/lang/Integer;

    return-object p0
.end method

.method public teamB_info(Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;)Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->teamB_info:Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;

    return-object p0
.end method

.method public teamB_score(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->teamB_score:Ljava/lang/Integer;

    return-object p0
.end method

.method public update_timestamp(Ljava/lang/Long;)Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify$Builder;->update_timestamp:Ljava/lang/Long;

    return-object p0
.end method
