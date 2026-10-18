.class final Lcom/uqm/crashsight/protobuf/FieldInfo;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/FieldInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/uqm/crashsight/protobuf/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Field;

.field private final b:Lcom/uqm/crashsight/protobuf/FieldType;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Ljava/lang/reflect/Field;

.field private final f:I

.field private final g:Z

.field private final h:Z

.field private final i:Lcom/uqm/crashsight/protobuf/OneofInfo;

.field private final j:Ljava/lang/reflect/Field;

.field private final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Object;

.field private final m:Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/uqm/crashsight/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/uqm/crashsight/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "IZZ",
            "Lcom/uqm/crashsight/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->a:Ljava/lang/reflect/Field;

    .line 334
    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->b:Lcom/uqm/crashsight/protobuf/FieldType;

    .line 335
    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->c:Ljava/lang/Class;

    .line 336
    iput p2, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->d:I

    .line 337
    iput-object p5, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->e:Ljava/lang/reflect/Field;

    .line 338
    iput p6, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->f:I

    .line 339
    iput-boolean p7, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->g:Z

    .line 340
    iput-boolean p8, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->h:Z

    .line 341
    iput-object p9, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->i:Lcom/uqm/crashsight/protobuf/OneofInfo;

    .line 342
    iput-object p10, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->k:Ljava/lang/Class;

    .line 343
    iput-object p11, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->l:Ljava/lang/Object;

    .line 344
    iput-object p12, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->m:Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    .line 345
    iput-object p13, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->j:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static a(ILcom/uqm/crashsight/protobuf/FieldType;Lcom/uqm/crashsight/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/uqm/crashsight/protobuf/FieldType;",
            "Lcom/uqm/crashsight/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;",
            ")",
            "Lcom/uqm/crashsight/protobuf/FieldInfo;"
        }
    .end annotation

    move-object/from16 v3, p1

    .line 232
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(I)V

    .line 233
    const-string v0, "fieldType"

    invoke-static {v3, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    const-string v0, "oneof"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    const-string v0, "oneofStoredType"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/FieldType;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v14, Lcom/uqm/crashsight/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v14

    move v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v13}, Lcom/uqm/crashsight/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/uqm/crashsight/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Oneof is only supported for scalar fields. Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;
    .locals 15

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(I)V

    .line 139
    const-string v0, "field"

    move-object v2, p0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/uqm/crashsight/protobuf/FieldInfo;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/uqm/crashsight/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/uqm/crashsight/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/uqm/crashsight/protobuf/FieldInfo;
    .locals 15

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(I)V

    .line 163
    const-string v0, "field"

    move-object v2, p0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/uqm/crashsight/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v1 .. v14}, Lcom/uqm/crashsight/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/uqm/crashsight/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/FieldInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/uqm/crashsight/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/uqm/crashsight/protobuf/FieldInfo;"
        }
    .end annotation

    .line 116
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(I)V

    .line 117
    const-string v0, "field"

    move-object v2, p0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "fieldType"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "messageClass"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/uqm/crashsight/protobuf/FieldInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v14}, Lcom/uqm/crashsight/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/uqm/crashsight/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/uqm/crashsight/protobuf/FieldInfo;
    .locals 15

    move-object/from16 v3, p2

    .line 91
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(I)V

    .line 92
    const-string v0, "field"

    move-object v1, p0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    const-string v0, "fieldType"

    invoke-static {v3, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/uqm/crashsight/protobuf/FieldType;->B:Lcom/uqm/crashsight/protobuf/FieldType;

    if-eq v3, v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/FieldType;->X:Lcom/uqm/crashsight/protobuf/FieldType;

    if-eq v3, v0, :cond_0

    .line 97
    new-instance v14, Lcom/uqm/crashsight/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/uqm/crashsight/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/uqm/crashsight/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;
    .locals 15

    move-object/from16 v5, p3

    .line 189
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(I)V

    .line 190
    const-string v0, "field"

    move-object v1, p0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string v0, "fieldType"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    const-string v0, "presenceField"

    invoke-static {v5, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 193
    invoke-static/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/FieldInfo;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    move/from16 v6, p4

    .line 197
    new-instance v14, Lcom/uqm/crashsight/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/uqm/crashsight/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/uqm/crashsight/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v14
.end method

.method public static a(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Z)Lcom/uqm/crashsight/protobuf/FieldInfo;
    .locals 15

    move-object/from16 v3, p2

    .line 66
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(I)V

    .line 67
    const-string v0, "field"

    move-object v1, p0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    const-string v0, "fieldType"

    invoke-static {v3, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/uqm/crashsight/protobuf/FieldType;->B:Lcom/uqm/crashsight/protobuf/FieldType;

    if-eq v3, v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/FieldType;->X:Lcom/uqm/crashsight/protobuf/FieldType;

    if-eq v3, v0, :cond_0

    .line 72
    new-instance v14, Lcom/uqm/crashsight/protobuf/FieldInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v13}, Lcom/uqm/crashsight/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/uqm/crashsight/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;
    .locals 15

    .line 300
    const-string v0, "mapDefaultEntry"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 301
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(I)V

    .line 302
    const-string v0, "field"

    move-object v2, p0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    new-instance v0, Lcom/uqm/crashsight/protobuf/FieldInfo;

    sget-object v4, Lcom/uqm/crashsight/protobuf/FieldType;->Y:Lcom/uqm/crashsight/protobuf/FieldType;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/uqm/crashsight/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/uqm/crashsight/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method private static a(I)V
    .locals 3

    if-lez p0, :cond_0

    return-void

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fieldNumber must be positive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/uqm/crashsight/protobuf/Internal$EnumVerifier;)Lcom/uqm/crashsight/protobuf/FieldInfo;
    .locals 15

    move-object/from16 v5, p3

    .line 274
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a(I)V

    .line 275
    const-string v0, "field"

    move-object v1, p0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v0, "fieldType"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    const-string v0, "presenceField"

    invoke-static {v5, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 278
    invoke-static/range {p4 .. p4}, Lcom/uqm/crashsight/protobuf/FieldInfo;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    move/from16 v6, p4

    .line 282
    new-instance v14, Lcom/uqm/crashsight/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/uqm/crashsight/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/uqm/crashsight/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/uqm/crashsight/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v14
.end method

.method private static b(I)Z
    .locals 1

    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->d:I

    return v0
.end method

.method public final b()Ljava/lang/reflect/Field;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->a:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final c()Lcom/uqm/crashsight/protobuf/FieldType;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->b:Lcom/uqm/crashsight/protobuf/FieldType;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 39
    check-cast p1, Lcom/uqm/crashsight/protobuf/FieldInfo;

    .line 1384
    iget v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->d:I

    iget p1, p1, Lcom/uqm/crashsight/protobuf/FieldInfo;->d:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/OneofInfo;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->i:Lcom/uqm/crashsight/protobuf/OneofInfo;

    return-object v0
.end method

.method public final e()Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->m:Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public final f()Ljava/lang/reflect/Field;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->e:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->f:I

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->g:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->h:Z

    return v0
.end method

.method public final k()Ljava/lang/reflect/Field;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->j:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final l()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 433
    sget-object v0, Lcom/uqm/crashsight/protobuf/FieldInfo$1;->a:[I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->b:Lcom/uqm/crashsight/protobuf/FieldType;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->c:Ljava/lang/Class;

    return-object v0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldInfo;->k:Ljava/lang/Class;

    return-object v0
.end method
