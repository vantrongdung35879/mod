.class public final Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:Ljava/lang/Integer;

.field public static final DEFAULT_EXPIRE:Ljava/lang/Integer;

.field public static final DEFAULT_OPTION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/broadcastMsg/Option;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PLAY_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_POINTS:Ljava/lang/Integer;

.field public static final DEFAULT_QUESTION_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SCHEDULE_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_UPDATE_PERIOD:Ljava/lang/Integer;


# instance fields
.field public final content:Lcom/tencent/protocol/tme/commonschema/MultiLang;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x2
    .end annotation
.end field

.field public final duration:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final expire:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final option_list:Ljava/util/List;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        label = .enum Lcom/squareup/tmes/Message$Label;->REPEATED:Lcom/squareup/tmes/Message$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/broadcastMsg/Option;",
            ">;"
        }
    .end annotation
.end field

.field public final play_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final points:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final question_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final schedule_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final update_period:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->DEFAULT_OPTION_LIST:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->DEFAULT_POINTS:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->DEFAULT_UPDATE_PERIOD:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->DEFAULT_EXPIRE:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->DEFAULT_DURATION:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->DEFAULT_PLAY_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;)V
    .locals 10

    iget-object v1, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->question_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->option_list:Ljava/util/List;

    iget-object v4, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->points:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->update_period:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->expire:Ljava/lang/Integer;

    iget-object v7, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->duration:Ljava/lang/Integer;

    iget-object v8, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->play_type:Ljava/lang/Integer;

    iget-object v9, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;->schedule_id:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;-><init>(Ljava/lang/String;Lcom/tencent/protocol/tme/commonschema/MultiLang;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/protocol/tme/commonschema/MultiLang;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/protocol/tme/commonschema/MultiLang;",
            "Ljava/util/List<",
            "Lcom/tencent/protocol/tme/broadcastMsg/Option;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->question_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-static {p3}, Lcom/squareup/tmes/Message;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->option_list:Ljava/util/List;

    iput-object p4, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->points:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->update_period:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->expire:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->duration:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->play_type:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->schedule_id:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/squareup/tmes/Message;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->question_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->question_id:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->option_list:Ljava/util/List;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->option_list:Ljava/util/List;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->points:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->points:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->update_period:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->update_period:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->expire:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->expire:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->duration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->duration:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->play_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->play_type:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->schedule_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->schedule_id:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->question_id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/protocol/tme/commonschema/MultiLang;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->option_list:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->points:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->update_period:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->expire:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->duration:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->play_type:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->schedule_id:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :cond_9
    return v0
.end method
