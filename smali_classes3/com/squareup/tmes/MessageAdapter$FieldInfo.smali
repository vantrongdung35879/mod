.class public final Lcom/squareup/tmes/MessageAdapter$FieldInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/MessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldInfo"
.end annotation


# instance fields
.field private final builderField:Ljava/lang/reflect/Field;

.field public final datatype:Lcom/squareup/tmes/Message$Datatype;

.field public enumAdapter:Lcom/squareup/tmes/EnumAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/tmes/EnumAdapter<",
            "+",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">;"
        }
    .end annotation
.end field

.field public final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">;"
        }
    .end annotation
.end field

.field public final label:Lcom/squareup/tmes/Message$Label;

.field public messageAdapter:Lcom/squareup/tmes/MessageAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/tmes/MessageAdapter<",
            "+",
            "Lcom/squareup/tmes/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final messageField:Ljava/lang/reflect/Field;

.field public final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/tmes/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final redacted:Z

.field public final tag:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Message$Label;ZLjava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/squareup/tmes/Message$Datatype;",
            "Lcom/squareup/tmes/Message$Label;",
            "Z",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->tag:I

    iput-object p2, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/tmes/Message$Datatype;

    iput-object p4, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->label:Lcom/squareup/tmes/Message$Label;

    iput-boolean p5, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->redacted:Z

    sget-object p1, Lcom/squareup/tmes/Message$Datatype;->ENUM:Lcom/squareup/tmes/Message$Datatype;

    const/4 p2, 0x0

    if-ne p3, p1, :cond_0

    iput-object p6, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->enumType:Ljava/lang/Class;

    :goto_0
    iput-object p2, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->messageType:Ljava/lang/Class;

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/squareup/tmes/Message$Datatype;->MESSAGE:Lcom/squareup/tmes/Message$Datatype;

    if-ne p3, p1, :cond_1

    iput-object p6, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->messageType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->enumType:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->enumType:Ljava/lang/Class;

    goto :goto_0

    :goto_1
    iput-object p7, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->messageField:Ljava/lang/reflect/Field;

    iput-object p8, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->builderField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Message$Label;ZLjava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lcom/squareup/tmes/MessageAdapter$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/squareup/tmes/MessageAdapter$FieldInfo;-><init>(ILjava/lang/String;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Message$Label;ZLjava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/squareup/tmes/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->messageField:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/squareup/tmes/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->builderField:Ljava/lang/reflect/Field;

    return-object p0
.end method
