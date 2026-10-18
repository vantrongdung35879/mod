.class public Lcom/intlgame/api/achievement/INTLAchievementInfo;
.super Ljava/lang/Object;
.source "INTLAchievementInfo.java"


# instance fields
.field public achievement_id_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "id"
    .end annotation
.end field

.field public current_steps_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "current_steps"
    .end annotation
.end field

.field public description_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "description"
    .end annotation
.end field

.field public extra_data_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "extra_data"
    .end annotation
.end field

.field public name_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "name"
    .end annotation
.end field

.field public platform_data_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "platform_data"
    .end annotation
.end field

.field public status_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "status"
    .end annotation
.end field

.field public total_steps_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "total_steps"
    .end annotation
.end field

.field public unlock_time_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "unlock_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
